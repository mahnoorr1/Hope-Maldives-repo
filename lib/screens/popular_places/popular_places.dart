import 'package:flutter/material.dart';
import 'package:hop_maldives/animations/bottom_animation.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/widgets/cards/property_card.dart';

part 'views/desktop.dart';
part 'views/tablet.dart';
part 'views/mobile.dart';

class PopularPlacesScreen extends StatelessWidget {
  const PopularPlacesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final places = args['places'];

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Responsive(
            mobile: Mobile(
              places: places,
            ),
            tablet: const Tablet(),
            desktop: const Desktop(),
          ),
        ),
      ),
    );
  }
}
