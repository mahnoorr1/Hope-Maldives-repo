import 'package:flutter/material.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_theme.dart';

class ProfileUtils {
  static List options = [
    {
      'icon': Icon(
        Icons.shopping_bag,
        color: AppTheme.c!.primary,
      ),
      'label': 'My Requests',
      'route': AppRoutes.requests,
    },
    {
      'icon': Icon(
        Icons.info,
        color: AppTheme.c!.primary,
        size: AppDimensions.normalize(8),
      ),
      'label': 'About us',
      'route': '/aboutUs',
    },
    {
      'icon': Icon(
        Icons.privacy_tip,
        color: AppTheme.c!.primary,
        size: AppDimensions.normalize(8),
      ),
      'label': 'Privacy Policy',
      'route': '/p',
    },
    {
      'icon': Icon(
        Icons.star,
        color: AppTheme.c!.primary,
        size: AppDimensions.normalize(8),
      ),
      'label': 'Rate our app',
      'route': '/rate',
    },
    {
      'icon': Icon(
        Icons.share,
        color: AppTheme.c!.primary,
        size: AppDimensions.normalize(8),
      ),
      'label': 'Share our app',
      'route': '/share',
    },
    {
      'icon': Icon(
        Icons.exit_to_app_rounded,
        color: AppTheme.c!.primary,
        size: AppDimensions.normalize(8),
      ),
      'label': 'Logout',
      'route': '/logout',
    },
  ];
}
