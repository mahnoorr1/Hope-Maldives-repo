import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';

import 'package:hop_maldives/animations/entrance_fader.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/cubits/auth/cubit.dart';
import 'package:hop_maldives/cubits/chat/cubit.dart';
import 'package:hop_maldives/cubits/discover/cubit.dart';
import 'package:hop_maldives/cubits/diving/cubit.dart';
import 'package:hop_maldives/cubits/excursion/cubit.dart';
import 'package:hop_maldives/cubits/hotels/cubit.dart';
import 'package:hop_maldives/cubits/islands/cubit.dart';
import 'package:hop_maldives/cubits/request/cubit.dart';
import 'package:hop_maldives/cubits/resorts/cubit.dart';
import 'package:hop_maldives/cubits/tour/cubit.dart';
import 'package:hop_maldives/models/auth/auth_data.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/utils/app_info.dart';
import 'package:hop_maldives/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void next() async {
    final pkg = await PackageInfo.fromPlatform();
    AuthData? authData;
    final cache = Hive.box('users');
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      authData = cache.get(user.uid);
    }

    AppInfo.init(pkg);

    Future.delayed(const Duration(seconds: 2), () async {
      if (authData == null) {
        Navigator.pushReplacementNamed(
          context,
          kIsWeb ? AppRoutes.login : AppRoutes.onboarding,
        );
      } else {
        if (!mounted) return;
        ChatCubit.c(context).fetch();
        RequestCubit.c(context).fetch();

        await AuthCubit.cubit(context).fetch();
        if (!mounted) return;
        await HotelsCubit.c(context).fetch();
        if (!mounted) return;
        await IslandsCubit.c(context).fetch();
        if (!mounted) return;
        await ResortsCubit.c(context).fetch();
        if (!mounted) return;
        await TourCubit.c(context).fetch();
        if (!mounted) return;
        await DiscoverCubit.cubit(context).fetch();
        if (!mounted) return;
        await RequestCubit.c(context).fetch();
        if (!mounted) return;
        await DivingCubit.c(context).fetch();
        if (!mounted) return;
        await ExcursionCubit.c(context).fetch();
        if (!mounted) return;
        Navigator.pushReplacementNamed(context, AppRoutes.dashboard);
      }
    });
  }

  void initTheme() {
    final appProvider = Provider.of<AppProvider>(context, listen: false);
    appProvider.init();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      next();
      initTheme();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);
    return Scaffold(
      body: Center(
        child: EntranceFader(
          offset: const Offset(0, 20),
          duration: const Duration(seconds: 1),
          child: Image.asset(
            StaticAssets.fullLogo,
            height: AppDimensions.normalize(35),
          ),
        ),
      ),
    );
  }
}
