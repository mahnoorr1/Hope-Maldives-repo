import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hop_maldives/cubits/chat/cubit.dart';
import 'package:hop_maldives/cubits/discover/cubit.dart';
import 'package:hop_maldives/cubits/diving/cubit.dart';
import 'package:hop_maldives/cubits/excursion/cubit.dart';
import 'package:hop_maldives/cubits/hotels/cubit.dart';
import 'package:hop_maldives/cubits/islands/cubit.dart';
import 'package:hop_maldives/cubits/request/cubit.dart';
import 'package:hop_maldives/cubits/resorts/cubit.dart';
import 'package:hop_maldives/cubits/tour/cubit.dart';
import 'package:hop_maldives/providers/chat_provider.dart';
import 'package:hop_maldives/widgets/chat_end_box.dart';
import 'package:provider/provider.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/cubits/auth/cubit.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/widgets/screen/screen.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/widgets/loader/full_screen_loader.dart';

part 'views/tablet.dart';
part 'views/mobile.dart';

part 'views/widgets/_drawer.dart';
part 'views/widgets/_tablet_mini_drawer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      HotelsCubit.c(context).fetch();
      IslandsCubit.c(context).fetch();
      ResortsCubit.c(context).fetch();
      DivingCubit.c(context).fetch();
      ExcursionCubit.c(context).fetch();
      DiscoverCubit.cubit(context).fetch();
      RequestCubit.c(context).fetch();
      TourCubit.c(context).fetch();
      ChatCubit.c(context).fetch();
    }

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
