import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hop_maldives/cubits/diving/cubit.dart';
import 'package:hop_maldives/cubits/excursion/cubit.dart';
import 'package:provider/provider.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/utils/utils.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/cubits/auth/cubit.dart';
import 'package:hop_maldives/cubits/hotels/cubit.dart';
import 'package:hop_maldives/cubits/islands/cubit.dart';
import 'package:hop_maldives/cubits/resorts/cubit.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/widgets/cards/property_card.dart';
import 'package:hop_maldives/animations/bottom_animation.dart';
import 'package:hop_maldives/widgets/cards/popular_place_card.dart';

part 'views/tablet.dart';
part 'views/mobile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
