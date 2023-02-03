import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hop_maldives/utils/launcher.dart';
import 'package:hop_maldives/widgets/chips/activities_chips.dart';
import 'package:hop_maldives/widgets/multiline_text_field.dart';
import 'package:numberpicker/numberpicker.dart';

import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/space.dart';
import 'package:hop_maldives/configs/ui_props.dart';
import 'package:hop_maldives/cubits/auth/cubit.dart';
import 'package:hop_maldives/cubits/request/cubit.dart';
import 'package:hop_maldives/models/diving.dart';
import 'package:hop_maldives/models/excursion.dart';
import 'package:hop_maldives/models/request.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/widgets/buttons/app_button.dart';
import 'package:hop_maldives/widgets/custom_snackbar.dart';
import 'package:hop_maldives/widgets/loader/full_screen_loader.dart';
import 'package:hop_maldives/widgets/screen/screen.dart';
import 'package:hop_maldives/widgets/types_modal.dart';

part 'views/desktop.dart';
part 'views/mobile.dart';
part 'views/tablet.dart';

class DivingExcBookingScreen extends StatelessWidget {
  const DivingExcBookingScreen({Key? key}) : super(key: key);

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
