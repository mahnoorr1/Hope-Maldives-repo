import 'package:flutter/material.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/models/review.dart';
import 'package:hop_maldives/painters/icons/chat.dart';
import 'package:hop_maldives/painters/icons/gallery.dart';
import 'package:hop_maldives/painters/icons/home.dart';
import 'package:hop_maldives/painters/icons/profile.dart';
import 'package:hop_maldives/painters/icons/tour.dart';
import 'package:hop_maldives/screens/chat/chat.dart';
import 'package:hop_maldives/screens/discover/discover.dart';
import 'package:hop_maldives/screens/home/home.dart';
import 'package:hop_maldives/screens/profile/profile.dart';
import 'package:hop_maldives/screens/tours/tours.dart';

class AppUtils {
  static const sheetBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(
        20,
      ),
      topRight: Radius.circular(
        20,
      ),
    ),
  );

  static const List<String> filterCategories = [
    'Adventure',
    'Waterfront',
    'Beaches',
    'Wildlife',
    'Deserts',
    'Religious',
  ];

  static const List<String> filters = [
    'Islands',
    'Resorts',
    'Hotels',
    'Divings',
    'Excursions',
  ];

  static double ratings(List<Review> reviews) {
    double avg =
        reviews.map((m) => m.ratings).reduce((a, b) => a + b) / reviews.length;

    return avg;
  }
}

class StaticAssets {
  // logos
  static const String logo = 'assets/logos/logo.png';
  static const String google = 'assets/logos/google.svg';
  static const String fullLogo = 'assets/logos/full_logo.png';

  // images
  static const String eat1 = 'assets/images/eat2.jpeg';
  static const String room = 'assets/images/room.jpeg';
  static const String beach = 'assets/images/beach.jpeg';
  static const String forgot = 'assets/images/forgot.png';

  // about us text
  static const String aboutUs =
      'Hop Maldives is a local Maldivian travel agency and tour package curator. We aim to facilitate safe, memorable experiences for tourists and travellers who desire to explore the Maldives islands.\n\nWe achieve this by providing a single place to plan your dream vacation and getaway easily, from when you arrive to when you depart. You can book your excursion tours, rent your water sports equipment, select your hotel, guest house or resort as well as all your transfers before you even leave your house, all through Hop Maldives.\n\nHop Maldives removes the uncertainty and confusion associated with travelling, book through us today!';
}

class DashboardUtils {
  static const List<Widget> views = [
    HomeScreen(),
    ToursScreen(),
    DiscoverScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  static const List<String> itemLabels = [
    'Home',
    'Tours',
    'Discover',
    'Chat',
    'Profile',
  ];

  static Widget? icon(Color color, int index) {
    switch (index) {
      case 0:
        return CustomPaint(
          painter: HomeIconPainter(
            color: color,
          ),
          size: HomeIconPainter.size(AppDimensions.normalize(7)),
        );
      case 1:
        return CustomPaint(
          painter: TourIconPainter(
            color: color,
          ),
          size: TourIconPainter.size(AppDimensions.normalize(7)),
        );
      case 2:
        return CustomPaint(
          painter: GalleryIconPainer(
            color: color,
          ),
          size: GalleryIconPainer.size(AppDimensions.normalize(7)),
        );
      case 3:
        return CustomPaint(
          painter: ChatIconPainter(
            color: color,
          ),
          size: ChatIconPainter.size(AppDimensions.normalize(7)),
        );
      case 4:
        return CustomPaint(
          painter: ProfileIconPainter(
            color: color,
          ),
          size: ProfileIconPainter.size(AppDimensions.normalize(7)),
        );

      default:
        return null;
    }
  }
}
