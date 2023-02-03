part of '../../booking_details.dart';

class _CustomFeedback extends StatelessWidget {
  final List<Review> reviews;
  const _CustomFeedback({
    Key? key,
    required this.reviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Customer feedbacks',
            style: AppText.h2b,
          ),
          Space.y!,
          ...reviews.map(
            (e) => ListTile(
              title: Text(
                "\"${e.review}\"",
                style: AppText.l1!.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),
              subtitle: RatingBar(
                ignoreGestures: true,
                initialRating: e.ratings,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: AppDimensions.normalize(5),
                ratingWidget: RatingWidget(
                  empty: const Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                  full: Icon(
                    Icons.star,
                    color: AppTheme.c!.primary,
                  ),
                  half: Icon(
                    Icons.star_half,
                    color: AppTheme.c!.primary,
                  ),
                ),
                onRatingUpdate: (v) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
