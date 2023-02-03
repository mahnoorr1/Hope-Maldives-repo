import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hop_maldives/cubits/diving/cubit.dart';
import 'package:hop_maldives/cubits/excursion/cubit.dart';
import 'package:hop_maldives/models/diving.dart';
import 'package:hop_maldives/models/excursion.dart';
import 'package:hop_maldives/models/resort.dart';
import 'package:hop_maldives/models/review.dart';
import 'package:hop_maldives/utils/launcher.dart';
import 'package:hop_maldives/utils/utils.dart';
import 'package:hop_maldives/widgets/buttons/product_code_button.dart';
import 'package:hop_maldives/widgets/chips/activities_chips.dart';
import 'package:hop_maldives/widgets/image_placeholder.dart';
import 'package:hop_maldives/widgets/ratings_popup/ratings_popup.dart';
import 'package:hop_maldives/widgets/reviews_modal_sheet.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/cubits/hotels/cubit.dart';
import 'package:hop_maldives/models/hotel.dart';
import 'package:hop_maldives/models/island.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/widgets/buttons/app_button.dart';
import 'package:hop_maldives/widgets/cards/property_card.dart';
import 'package:hop_maldives/widgets/chips/facilities_chips.dart';

part 'views/desktop.dart';
part 'views/mobile.dart';
part 'views/tablet.dart';

part 'views/widgets/_review_summary.dart';
part 'views/widgets/_property_details.dart';
part 'views/widgets/_customer_feedback.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final property = args['property'];

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Responsive(
            mobile: Mobile(
              property: property,
            ),
            tablet: Tablet(
              property: property,
            ),
            desktop: Tablet(
              property: property,
            ),
          ),
        ),
      ),
    );
  }
}
