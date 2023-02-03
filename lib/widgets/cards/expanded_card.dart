import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/space.dart';

class ExpandedCard extends StatelessWidget {
  final dynamic property;
  const ExpandedCard({
    Key? key,
    required this.property,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        AppRoutes.bookingDetails,
        arguments: {
          'property': property,
        },
      ),
      child: Container(
        padding: Space.all(),
        height: AppDimensions.normalize(50),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: property.images.first,
                    fit: BoxFit.cover,
                    placeholder: (context, string) => Center(
                      child: Text(
                        '...',
                        style: AppText.b2b!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Space.x1!,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      property.name,
                      style: AppText.b2b,
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 4; i++)
                          Icon(
                            Icons.star,
                            color: AppTheme.c!.primary,
                          ),
                        const Icon(
                          Icons.star,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Text(
                      property.description,
                      maxLines: 2,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
