import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/app_typography_ext.dart';
import 'package:hop_maldives/configs/space.dart';
import 'package:hop_maldives/cubits/auth/cubit.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/screens/about_us/about_us.dart';
import 'package:hop_maldives/screens/requests/requests.dart';
import 'package:hop_maldives/utils/app_info.dart';
import 'package:hop_maldives/utils/profile_utils.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

part 'views/desktop.dart';
part 'views/tablet.dart';
part 'views/mobile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
