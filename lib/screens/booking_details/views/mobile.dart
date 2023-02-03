part of '../booking_details.dart';

class Mobile extends StatefulWidget {
  final dynamic property;
  const Mobile({
    Key? key,
    required this.property,
  }) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final hotelCubit = HotelsCubit.c(context);
    final divingCubit = DivingCubit.c(context);
    final excursionCubit = ExcursionCubit.c(context);

    List<Review> reviews = widget.property.reviews;

    List<String> images = widget.property.images;
    List<String> hotelIDs = [];
    List<String> divingIDs = [];
    List<String> excursionIDs = [];

    List<Hotel> hotels = [];
    List<Diving> divings = [];
    List<Excursion> excursions = [];

    if (widget.property is Island && widget.property.hotels != null) {
      hotelIDs = widget.property.hotels as List<String>;
      divingIDs = widget.property.divingDestinations as List<String>;
      excursionIDs = widget.property.excursions as List<String>;

      hotels = hotelCubit.state.fetch!.data!
          .where((element) => hotelIDs.contains(element.id))
          .toList();

      divings = divingCubit.state.fetch!.data!
          .where((element) => divingIDs.contains(element.id))
          .toList();

      excursions = excursionCubit.state.fetch!.data!
          .where((element) => excursionIDs.contains(element.id))
          .toList();
    }

    return SingleChildScrollView(
      padding: Space.all(0.75),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: BackButton(
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Space.y1!,
          Text(
            widget.property.name,
            style: AppText.h1b,
          ),
          Space.y!,
          Row(
            children: [
              const Icon(
                Icons.pin_drop_outlined,
                color: Colors.grey,
              ),
              Space.x!,
              Text(
                widget.property.address,
                style: AppText.b2!.copyWith(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Space.y1!,
          CarouselSlider(
            items: images.map((img) {
              return SizedBox(
                width: AppDimensions.size!.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: CachedNetworkImage(
                    imageUrl: img,
                    fit: BoxFit.cover,
                    placeholder: (context, index) => const ImagePlaceholder(),
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              enlargeCenterPage: true,
              autoPlay: true,
            ),
          ),
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CodeButton(
                code: widget.property.id,
              ),
            ],
          ),
          Row(
            children: [
              Chip(
                backgroundColor: Colors.grey[200],
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: AppTheme.c!.primary,
                    ),
                    Space.xf(0.25),
                    Text(
                      widget.property.reviews.isEmpty
                          ? '0.0'
                          : AppUtils.ratings(widget.property.reviews)
                              .toStringAsFixed(1),
                      style: AppText.l1b!.copyWith(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Space.x1!,
              InkWell(
                borderRadius: BorderRadius.circular(360),
                onTap: () => ReviewModalSheet.reviews(context, reviews),
                child: Chip(
                  backgroundColor: Colors.grey[200],
                  label: Text(
                    '${widget.property.reviews.length} Review(s)',
                    style: AppText.l1b!.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Space.xm!,
              TextButton(
                onPressed: () => showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (_) => AlertDialog(
                    contentPadding: EdgeInsets.zero,
                    content: RatingsPopup(
                      property: widget.property,
                    ),
                  ),
                ),
                child: Text(
                  'Give a review',
                  style: AppText.l2b,
                ),
              )
            ],
          ),
          Space.y1!,
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: AppText.h3b!.copyWith(
                    color: Provider.of<AppProvider>(context).isDark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                Space.y1!,
                Text(
                  widget.property.description,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          Space.y!,
          if (widget.property is Resort || widget.property is Hotel) ...[
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Package Inclusives',
                    style: AppText.h3b!.copyWith(
                      color: Provider.of<AppProvider>(context).isDark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  Space.y1!,
                  Text(
                    widget.property.package ??
                        "Nothing Included in Package Inclusives",
                    textAlign: TextAlign.justify,
                  ),
                  Space.y1!,
                ],
              ),
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terms & Policy',
                    style: AppText.b1b!.copyWith(
                      color: Provider.of<AppProvider>(context).isDark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  Space.y1!,
                  Text(
                    widget.property.policy ?? "No Policies",
                    textAlign: TextAlign.justify,
                  ),
                  Space.y1!,
                ],
              ),
            ),
            Space.y1!,
          ],
          if (widget.property is Diving || widget.property is Excursion) ...[
            Text(
              widget.property is Excursion
                  ? 'Available Activities'
                  : 'What can be seen',
              style: AppText.b1b,
            ),
            Space.y!,
            ActivitiesChips(
              act: widget.property.activities,
            )
          ] else ...[
            Text(
              'Facilities',
              style: AppText.b1b,
            ),
            Space.y!,
            FacilitiesChips(
              facilities: widget.property.facilities,
            )
          ],
          Space.y!,
          Text(
            'Map',
            style: AppText.b1b,
          ),
          Space.y1!,
          SizedBox(
            height: AppDimensions.normalize(90),
            child: GoogleMap(
              myLocationButtonEnabled: false,
              myLocationEnabled: false,
              mapType: MapType.normal,
              onTap: (_) => LauncherUtil.openMap(
                widget.property.lat,
                widget.property.lng,
              ),
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  widget.property.lat,
                  widget.property.lng,
                ),
                zoom: 12,
              ),
              markers: {
                Marker(
                  markerId: const MarkerId("ID"),
                  position: LatLng(
                    widget.property.lat,
                    widget.property.lng,
                  ),
                ),
              },
            ),
          ),
          Space.y1!,
          if (widget.property is Resort) ...[
            Text(
              'Time limit',
              style: AppText.l1b,
            ),
            Text(
              'Last date to send request for this resort.',
              style: AppText.l2!.copyWith(
                fontSize: AppDimensions.normalize(4.5),
              ),
            ),
            Space.y!,
            Text(
              widget.property.deadline == null
                  ? "No Time Limit"
                  : DateFormat('dd MMM, yyyy').format(widget.property.deadline),
              style: AppText.b2b!.copyWith(
                color: Colors.red,
              ),
            ),
            Space.y1!,
          ],
          if (hotels.isEmpty)
            AppButton(
              child: Text(
                'Book Now',
                style: AppText.b1!.copyWith(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                if (widget.property is Diving || widget.property is Excursion) {
                  Navigator.pushNamed(context, AppRoutes.divingExcBooking,
                      arguments: {
                        'property': widget.property,
                      });
                } else {
                  Navigator.pushNamed(context, AppRoutes.booking, arguments: {
                    'property': widget.property,
                  });
                }
              },
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Hotels',
                  style: AppText.b1b,
                ),
                Text('${widget.property.name} includes following hotels'),
                Space.y!,
                ...hotels.map(
                  (e) => PropertyCard(e: e),
                ),
                if (divings.isNotEmpty) ...[
                  const Divider(),
                  Text(
                    'Dive Destinations',
                    style: AppText.b1b,
                  ),
                  Text(
                      '${widget.property.name} includes following diving spots'),
                  Space.y!,
                  ...divings.map(
                    (e) => PropertyCard(e: e),
                  ),
                ],
                if (excursions.isNotEmpty) ...[
                  const Divider(),
                  Text(
                    'Excursions',
                    style: AppText.b1b,
                  ),
                  Text('${widget.property.name} includes following excursions'),
                  Space.y!,
                  ...excursions.map(
                    (e) => PropertyCard(e: e),
                  ),
                ],
              ],
            ),
          Space.bottom!,
        ],
      ),
    );
  }
}
