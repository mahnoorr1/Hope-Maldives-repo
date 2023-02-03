import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/cubits/hotels/cubit.dart';
import 'package:hop_maldives/cubits/islands/cubit.dart';
import 'package:hop_maldives/cubits/resorts/cubit.dart';
import 'package:hop_maldives/cubits/tour/cubit.dart';
import 'package:hop_maldives/models/tour.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/widgets/cards/popular_place_card.dart';
import 'package:hop_maldives/widgets/cards/tour_card.dart';
import 'package:hop_maldives/widgets/custom_snackbar.dart';
import 'package:hop_maldives/widgets/loader/full_screen_loader.dart';
import '../../widgets/screen/screen.dart';

part 'views/tablet.dart';
part 'views/mobile.dart';

class ToursScreen extends StatelessWidget {
  const ToursScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Scaffold(
        body: SafeArea(
          child: Responsive(
            mobile: Mobile(),
            tablet: Tablet(),
            desktop: Tablet(),
          ),
        ),
      ),
    );
  }
}
