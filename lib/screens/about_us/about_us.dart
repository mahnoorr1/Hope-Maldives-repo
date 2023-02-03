import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/utils/app_info.dart';
import 'package:hop_maldives/utils/launcher.dart';
import 'package:hop_maldives/utils/utils.dart';

part 'views/desktop.dart';
part 'views/tablet.dart';
part 'views/mobile.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Scaffold(
        body: Responsive(
          mobile: Mobile(),
          tablet: Mobile(),
          desktop: Mobile(),
        ),
      ),
    );
  }
}
