part of '../booking_details.dart';

class Tablet extends StatelessWidget {
  final dynamic property;
  const Tablet({
    Key? key,
    required this.property,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);

    final hotelCubit = HotelsCubit.c(context);
    final divingCubit = DivingCubit.c(context);
    final excursionCubit = ExcursionCubit.c(context);

    double price = property is Hotel
        ? property.perNightPrice
        : property is Island || property is Diving || property is Excursion
            ? 0
            : property.price;

    List<Review> reviews = property.reviews as List<Review>;

    double ratings = reviews.isEmpty ? 0.0 : AppUtils.ratings(reviews);

    if (reviews.length > 3) reviews.take(3);

    List<String> images = property.images;
    List<String> hotelIDs = [];
    List<String> divingIDs = [];
    List<String> excursionIDs = [];

    List<Hotel> hotels = [];
    List<Diving> divings = [];
    List<Excursion> excursions = [];

    if (property is Island && property.hotels != null) {
      hotelIDs = property.hotels as List<String>;
      divingIDs = property.divingDestinations as List<String>;
      excursionIDs = property.excursions as List<String>;

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
      padding: Responsive.isDesktop(context) &&
              MediaQuery.of(context).size.width >= 1600
          ? Space.all(15, 1)
          : MediaQuery.of(context).size.width >= 1200
              ? Space.all(8, 1)
              : Space.all(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              BackButton(
                onPressed: () => Navigator.pop(context),
              ),
              Text(
                'Back',
                style: AppText.b1,
              )
            ],
          ),
          Space.y1!,
          Container(
            padding: Space.all(),
            // color: appProvider.isDark ? null : Colors.grey[100],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _PropertyDetails(
                        property: property,
                        price: price,
                      ),
                      Space.y1!,
                      Container(
                        decoration: UIProps.boxCard,
                        padding: Space.all(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: AppText.h2b,
                            ),
                            Space.y!,
                            Text(
                              property.description,
                            ),
                            Divider(
                              height: AppDimensions.normalize(15),
                            ),
                            if (property is Resort || property is Hotel) ...[
                              Text(
                                'Package Inclusives',
                                style: AppText.h2b,
                              ),
                              Space.y!,
                              Text(
                                property.package ?? "Nothing Included in Package Inclusives",
                              ),
                              Space.y1!,
                              Text(
                                'Terms & Policy',
                                style: AppText.l1b,
                              ),
                              Space.y!,
                              Text(
                                property.policy ?? "No Policies",
                              ),
                              Divider(
                                height: AppDimensions.normalize(15),
                              ),
                              if (property is Resort) ...[
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
                                  property.deadline == null ? "No Time Limit" :
                                  DateFormat('dd MMM, yyyy')
                                      .format(property.deadline),
                                  style: AppText.b2b!.copyWith(
                                    color: Colors.red,
                                  ),
                                ),
                                Divider(
                                  height: AppDimensions.normalize(15),
                                ),
                              ],
                            ],
                            _ReviewSummary(
                              property: property,
                              ratings: ratings,
                            ),
                            if (reviews.isNotEmpty) ...[
                              Divider(
                                height: AppDimensions.normalize(15),
                              ),
                              _CustomFeedback(
                                reviews: reviews,
                              ),
                            ],
                            if (property is Island) ...[
                              Divider(
                                height: AppDimensions.normalize(15),
                              ),
                              if (hotels.isNotEmpty) ...[
                                Text(
                                  'Hotels',
                                  style: AppText.h3b,
                                ),
                                Space.y!,
                                ...hotels.map((e) {
                                  return ListTile(
                                    onTap: () => Navigator.pushNamed(
                                        context, AppRoutes.booking,
                                        arguments: {
                                          'property': e,
                                        }),
                                    leading: CachedNetworkImage(
                                      imageUrl: e.images.first,
                                      fit: BoxFit.cover,
                                      width: AppDimensions.normalize(20),
                                    ),
                                    title: Text(
                                      e.name,
                                      style: AppText.b1b,
                                    ),
                                    subtitle: Text(
                                      e.description,
                                      maxLines: 1,
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      size: AppDimensions.normalize(8),
                                    ),
                                  );
                                })
                              ],
                              if (divings.isNotEmpty) ...[
                                Space.y1!,
                                Text(
                                  'Dive Destinations',
                                  style: AppText.h3b,
                                ),
                                Space.y!,
                                ...divings.map((e) {
                                  return ListTile(
                                    onTap: () => Navigator.pushNamed(
                                        context, AppRoutes.divingExcBooking,
                                        arguments: {
                                          'property': e,
                                        }),
                                    leading: CachedNetworkImage(
                                      imageUrl: e.images.first,
                                      fit: BoxFit.cover,
                                      width: AppDimensions.normalize(20),
                                    ),
                                    title: Text(
                                      e.name,
                                      style: AppText.b1b,
                                    ),
                                    subtitle: Text(
                                      e.description,
                                      maxLines: 1,
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      size: AppDimensions.normalize(8),
                                    ),
                                  );
                                })
                              ],
                              if (excursions.isNotEmpty) ...[
                                Space.y1!,
                                Text(
                                  'Excursions',
                                  style: AppText.h3b,
                                ),
                                Space.y!,
                                ...excursions.map((e) {
                                  return ListTile(
                                    onTap: () => Navigator.pushNamed(
                                        context, AppRoutes.divingExcBooking,
                                        arguments: {
                                          'property': e,
                                        }),
                                    leading: CachedNetworkImage(
                                      imageUrl: e.images.first,
                                      fit: BoxFit.cover,
                                      width: AppDimensions.normalize(20),
                                    ),
                                    title: Text(
                                      e.name,
                                      style: AppText.b1b,
                                    ),
                                    subtitle: Text(
                                      e.description,
                                      maxLines: 1,
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      size: AppDimensions.normalize(8),
                                    ),
                                  );
                                })
                              ],
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Space.x1!,
                Expanded(
                  child: Container(
                    decoration: UIProps.boxCard,
                    padding: Space.all(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (property is Diving || property is Excursion) ...[
                          Text(
                            property is Excursion
                                ? 'Available Activities'
                                : 'What can be seen',
                            style: AppText.h3b,
                          ),
                          Space.y!,
                          ActivitiesChips(
                            act: property.activities,
                          )
                        ] else ...[
                          Text(
                            'Facilities',
                            style: AppText.h3b,
                          ),
                          Space.y!,
                          FacilitiesChips(
                            facilities: property.facilities,
                          )
                        ],
                        Divider(
                          height: AppDimensions.normalize(10),
                        ),
                        Text(
                          'Photos',
                          style: AppText.h3b,
                        ),
                        Space.y!,
                        SizedBox(
                          height: AppDimensions.normalize(60),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: images
                                  .map(
                                    (e) => Padding(
                                      padding: Space.h!,
                                      child: CachedNetworkImage(
                                        imageUrl: e,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                        Divider(
                          height: AppDimensions.normalize(10),
                        ),
                        Text(
                          'Map',
                          style: AppText.h3b,
                        ),
                        Space.y!,
                        SizedBox(
                          height: AppDimensions.normalize(90),
                          child: GoogleMap(
                            myLocationButtonEnabled: false,
                            myLocationEnabled: false,
                            mapType: MapType.normal,
                            onTap: (_) => LauncherUtil.openMap(
                              property.lat,
                              property.lng,
                            ),
                            initialCameraPosition: CameraPosition(
                              target: LatLng(
                                property.lat,
                                property.lng,
                              ),
                              zoom: 12,
                            ),
                            markers: {
                              Marker(
                                markerId: const MarkerId("ID"),
                                position: LatLng(
                                  property.lat,
                                  property.lng,
                                ),
                              ),
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
