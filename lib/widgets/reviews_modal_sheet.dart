import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/space.dart';
import 'package:hop_maldives/models/review.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ReviewModalSheet {
  static void reviews(BuildContext context, List<Review> reviews) {
    showMaterialModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      builder: (_) => SingleChildScrollView(
        padding: Space.all(1),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reviews',
                    style: AppText.b2b,
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close,
                    ),
                  )
                ],
              ),
              if (reviews.isEmpty)
                Center(
                  child: Text(
                    'No reivews yet!',
                    style: AppText.l2,
                  ),
                ),
              ...reviews.map(
                (e) => ListTile(
                  minVerticalPadding: 0,
                  title: Text(
                    "\"${e.review}\"",
                    style: AppText.l1!.copyWith(
                      fontStyle: FontStyle.italic,
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
            ]),
      ),
    );
  }
}
