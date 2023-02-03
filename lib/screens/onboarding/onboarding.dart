import 'package:flutter/material.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/utils/onboarding_utils.dart';
import 'package:provider/provider.dart';

part 'views/mobile.dart';
part 'views/desktop.dart';

part 'views/widgets/indicator.dart';
part 'views/widgets/onboarding_page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Scaffold(
        body: SafeArea(
          child: Responsive(
            mobile: Mobile(),
            tablet: Mobile(),
            desktop: Desktop(),
          ),
        ),
      ),
    );
  }
}
