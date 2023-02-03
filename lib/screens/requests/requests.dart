import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hop_maldives/models/hotel.dart';
import 'package:hop_maldives/models/resort.dart';
import 'package:hop_maldives/widgets/custom_snackbar.dart';
import 'package:hop_maldives/widgets/screen/screen.dart';
import 'package:intl/intl.dart';

import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/cubits/request/cubit.dart';
import 'package:hop_maldives/models/request.dart';
import 'package:hop_maldives/responsive/responsive.dart';

import '../../widgets/loader/full_screen_loader.dart';

part 'views/desktop.dart';
part 'views/mobile.dart';
part 'views/tablet.dart';
part 'views/widgets/_mobile_request_card.dart';
part 'views/widgets/_request_details.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({Key? key}) : super(key: key);

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
