import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/space.dart';
import 'package:hop_maldives/configs/ui_props.dart';
import 'package:hop_maldives/cubits/auth/cubit.dart';
import 'package:hop_maldives/cubits/request/cubit.dart';
import 'package:hop_maldives/models/request.dart';
import 'package:hop_maldives/models/tour.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/widgets/buttons/app_button.dart';
import 'package:hop_maldives/widgets/custom_snackbar.dart';
import 'package:hop_maldives/widgets/custom_text_field.dart';
import 'package:hop_maldives/widgets/loader/full_screen_loader.dart';
import 'package:hop_maldives/widgets/screen/screen.dart';

part 'views/desktop.dart';
part 'views/mobile.dart';
part 'views/tablet.dart';

class TourBookingScreen extends StatelessWidget {
  const TourBookingScreen({Key? key}) : super(key: key);

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
