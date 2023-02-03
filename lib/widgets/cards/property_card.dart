import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/space.dart';
import 'package:hop_maldives/utils/utils.dart';

class PropertyCard extends StatelessWidget {
  final dynamic e;
  const PropertyCard({
    Key? key,
    required this.e,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        AppRoutes.bookingDetails,
        arguments: {
          'property': e,
        },
      ),
      child: Container(
        height: AppDimensions.normalize(33),
        margin: Space.v!,
        child: Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: e.images.first,
                  placeholder: (context, url) => const Text(
                    '...',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Space.x!,
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      e.name,
                      style: AppText.b2b,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      e.address,
                      style: AppText.l2,
                    ),
                  ),
                  Space.yf(0.05),
                  Expanded(
                    child: Text(
                      '${e.reviews.length} Reviews',
                      style: AppText.l2b,
                    ),
                  ),
                  Space.yf(0.05),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e.reviews.isEmpty
                            ? '0.0'
                            : AppUtils.ratings(e.reviews).toString()),
                        Icon(
                          Icons.star,
                          color: AppTheme.c!.primary,
                          size: AppDimensions.normalize(6),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
