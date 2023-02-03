import 'package:flutter/material.dart';
import 'package:hop_maldives/utils/utils.dart';
import 'package:hop_maldives/screens/onboarding/onboarding.dart';

class OnBoardingUtils {
  static List<Widget> pages = const [
    OnBoardingPage(
      image: StaticAssets.fullLogo,
      text:
          'Hop Maldives is the all-in-one travel guide and booking service. Sharing the best places to relax, eat, to simply enjoy your island paradise getaway. Book through us for exclusive discounts and a streamlined experience',
    ),
    OnBoardingPage(
      image: StaticAssets.beach,
      text:
          'Explore some of the most incredible beaches in the world!\nClaim our special discounted offer on your first confirmed booking!',
    ),
    OnBoardingPage(
      image: StaticAssets.room,
      text:
          'We can\'t wait to hear from you!\nPlan and customize your dream vacation getaway, today!',
    ),
  ];
}
