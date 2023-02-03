import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hop_maldives/animations/bottom_animation.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/cubits/discover/cubit.dart';
import 'package:hop_maldives/models/discover.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/widgets/buttons/app_button.dart';
import 'package:hop_maldives/widgets/image_placeholder.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

part 'views/mobile.dart';
part 'views/tablet.dart';
part 'views/widgets/_discover_card.dart';
part 'views/widgets/_expanded_discover_card.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

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
