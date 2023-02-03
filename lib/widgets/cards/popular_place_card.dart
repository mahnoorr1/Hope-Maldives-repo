import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/space.dart';
import 'package:hop_maldives/configs/ui_props.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/utils/utils.dart';
import 'package:hop_maldives/widgets/image_placeholder.dart';

class PopularPlaceCard extends StatelessWidget {
  final dynamic property;

  const PopularPlaceCard({
    Key? key,
    required this.property,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = property.name;
    int reviews = property.reviews.length;
    double ratings =
        property.reviews.isEmpty ? 0.0 : AppUtils.ratings(property.reviews);

    return InkWell(
      onTap: () =>
          Navigator.pushNamed(context, AppRoutes.bookingDetails, arguments: {
        'property': property,
      }),
      borderRadius: BorderRadius.circular(UIProps.radius),
      child: Container(
        margin: Space.hf(0.3),
        width: AppDimensions.normalize(70),
        height: AppDimensions.normalize(100),
        decoration: UIProps.boxCard,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: CachedNetworkImage(
                  imageUrl: property.images.first,
                  fit: BoxFit.cover,
                  placeholder: (context, s) => const ImagePlaceholder(),
                ),
              ),
            ),
            Space.y!,
            Padding(
              padding: Space.h!,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    name,
                    style: AppText.b2,
                  ),
                  Space.yf(0.2),
                  Text(
                    '$reviews Reviews',
                    style: AppText.l2b,
                  ),
                  Space.yf(0.3),
                  Row(
                    children: [
                      Text(
                        ratings.toStringAsFixed(1),
                        style: AppText.l1,
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
                      )
                    ],
                  ),
                ],
              ),
            ),
            Space.y!,
          ],
        ),
      ),
    );
  }
}
