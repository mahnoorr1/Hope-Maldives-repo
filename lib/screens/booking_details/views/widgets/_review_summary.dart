part of '../../booking_details.dart';

class _ReviewSummary extends StatelessWidget {
  final dynamic property;
  final double ratings;
  const _ReviewSummary({
    Key? key,
    required this.property,
    required this.ratings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: UIProps.boxCard,
      padding: Space.all(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Review Summary',
            style: AppText.h2b,
          ),
          Space.y!,
          Text(
            ratings.toStringAsFixed(1),
            style: AppText.h2b,
          ),
          Text(
            ratings > 4 ? 'Excellent' : 'Good',
            style: AppText.l1!.copyWith(
              color: Colors.grey,
            ),
          ),
          RatingBar(
            ignoreGestures: true,
            initialRating: ratings,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemSize: AppDimensions.normalize(7),
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
          Space.y!,
          Text('${property.reviews.length} Reviews')
        ],
      ),
    );
  }
}
