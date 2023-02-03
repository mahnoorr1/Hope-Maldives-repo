import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/space.dart';
import 'package:hop_maldives/models/tour.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/utils/utils.dart';
import 'package:hop_maldives/widgets/buttons/app_button.dart';
import 'package:hop_maldives/widgets/buttons/product_code_button.dart';
import 'package:hop_maldives/widgets/image_placeholder.dart';
import 'package:hop_maldives/widgets/ratings_popup/ratings_popup.dart';
import 'package:hop_maldives/widgets/reviews_modal_sheet.dart';
import 'package:intl/intl.dart';

part 'views/desktop.dart';
part 'views/tablet.dart';
part 'views/mobile.dart';

class TourDetailsScreen extends StatelessWidget {
  const TourDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Responsive(
            mobile: Mobile(
              tour: args['tour'],
            ),
            tablet: const Tablet(),
            desktop: const Desktop(),
          ),
        ),
      ),
    );
  }
}
