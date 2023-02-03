part of '../tour_details.dart';

class Mobile extends StatelessWidget {
  final Tour tour;
  const Mobile({
    Key? key,
    required this.tour,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);

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
            tour.name,
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
                tour.place,
                style: AppText.b2!.copyWith(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Space.y1!,
          CarouselSlider(
            items: tour.images.map((img) {
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
          Space.yf(0.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CodeButton(
                code: tour.id,
              ),
            ],
          ),
          Space.y!,
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
                      tour.reviews.isEmpty
                          ? '0.0'
                          : AppUtils.ratings(tour.reviews).toStringAsFixed(1),
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
                onTap: () => ReviewModalSheet.reviews(context, tour.reviews),
                child: Chip(
                  backgroundColor: Colors.grey[200],
                  label: Text(
                    '${tour.reviews.length} Review(s)',
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
                      property: tour,
                    ),
                  ),
                ),
                child: Text(
                  'Give Review',
                  style: AppText.l2b,
                ),
              )
            ],
          ),
          Space.y!,
          Text(
            'Description',
            style: AppText.l1b,
          ),
          Text(tour.description),
          Space.y1!,
          Text(
            'Terms & Policy',
            style: AppText.l1b,
          ),
          Text(tour.policy),
          Space.y1!,
          Text(
            'Time limit',
            style: AppText.l1b,
          ),
          Text(
            'Last date to send request for this tour.',
            style: AppText.l2!.copyWith(
              fontSize: AppDimensions.normalize(4.5),
            ),
          ),
          Space.y!,
          Text(
            DateFormat('dd MMM, yyyy').format(tour.deadline),
            style: AppText.b2b!.copyWith(
              color: Colors.red,
            ),
          ),
          Space.y1!,
          AppButton(
            child: Text(
              'Book Now',
              style: AppText.b1!.copyWith(
                color: Colors.white,
              ),
            ),
            onPressed: () =>
                Navigator.pushNamed(context, AppRoutes.tourBooking, arguments: {
              'tour': tour,
            }),
          )
        ],
      ),
    );
  }
}
