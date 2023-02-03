import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/space.dart';
import 'package:hop_maldives/configs/ui_props.dart';
import 'package:hop_maldives/models/tour.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/utils/utils.dart';
import 'package:hop_maldives/widgets/image_placeholder.dart';

class TourCard extends StatelessWidget {
  final bool isInverted;
  final Tour tour;
  const TourCard({
    Key? key,
    required this.isInverted,
    required this.tour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        AppRoutes.tourDetails,
        arguments: {
          'tour': tour,
        },
      ),
      child: Container(
        margin: Space.h,
        width: AppDimensions.normalize(120),
        height: AppDimensions.normalize(140),
        decoration: UIProps.boxCard,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (!isInverted)
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(UIProps.radius),
                    topRight: Radius.circular(UIProps.radius),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: tour.images.first,
                    fit: BoxFit.cover,
                    placeholder: (context, s) => const ImagePlaceholder(),
                  ),
                ),
              ),
            Padding(
              padding:
                  Responsive.isMobile(context) ? Space.all(0.75) : Space.all(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    tour.name,
                    style: AppText.b1b,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Package',
                          style: AppText.l2b!.copyWith(
                            color: AppTheme.c!.primary,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: AppTheme.c!.primary,
                        size: AppDimensions.normalize(7),
                      ),
                      Text(
                        tour.reviews.isEmpty
                            ? ' 0.0'
                            : AppUtils.ratings(tour.reviews).toStringAsFixed(1),
                        style: AppText.l2,
                      )
                    ],
                  ),
                  Space.y!,
                  Text(
                    tour.description,
                    textAlign: TextAlign.justify,
                    maxLines: 3,
                  ),
                  Space.y1!,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Price',
                        style: AppText.h3b,
                      ),
                      Text(
                        App.format(tour.price),
                        style: AppText.h3b,
                      )
                    ],
                  ),
                ],
              ),
            ),
            if (isInverted)
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(UIProps.radius),
                    bottomRight: Radius.circular(UIProps.radius),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: tour.images.first,
                    fit: BoxFit.cover,
                    placeholder: (context, s) => const ImagePlaceholder(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
