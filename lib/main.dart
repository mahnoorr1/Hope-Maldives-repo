import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hop_maldives/providers/chat_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/cubits/auth/cubit.dart';
import 'package:hop_maldives/cubits/chat/cubit.dart';
import 'package:hop_maldives/cubits/discover/cubit.dart';
import 'package:hop_maldives/cubits/diving/cubit.dart';
import 'package:hop_maldives/cubits/excursion/cubit.dart';
import 'package:hop_maldives/cubits/hotels/cubit.dart';
import 'package:hop_maldives/cubits/islands/cubit.dart';
import 'package:hop_maldives/cubits/request/cubit.dart';
import 'package:hop_maldives/cubits/resorts/cubit.dart';
import 'package:hop_maldives/cubits/review/cubit.dart';
import 'package:hop_maldives/cubits/tour/cubit.dart';
import 'package:hop_maldives/firebase_options.dart';
import 'package:hop_maldives/models/auth/auth_data.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/screens/booking/booking.dart';
import 'package:hop_maldives/screens/booking_details/booking_details.dart';
import 'package:hop_maldives/screens/chat/chat.dart';
import 'package:hop_maldives/screens/dashboard/dashboard.dart';

import 'configs/core_theme.dart' as theme;
import 'screens/about_us/about_us.dart';
import 'screens/diving_exc_booking/diving_exc_booking.dart';
import 'screens/filters/filters.dart';
import 'screens/login/login.dart';
import 'screens/onboarding/onboarding.dart';
import 'screens/popular_places/popular_places.dart';
import 'screens/requests/requests.dart';
import 'screens/signup/signup.dart';
import 'screens/splash.dart';
import 'screens/tour_booking/tour_booking.dart';
import 'screens/tour_details/tour_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setPathUrlStrategy();

  await Hive.initFlutter();

  Hive.registerAdapter<AuthData>(AuthDataAdapter());

  await Hive.openBox('app');
  await Hive.openBox('users');

  if (kIsWeb) {
    await FacebookAuth.i.webInitialize(
      appId: "2180756595435638",
      cookie: true,
      xfbml: true,
      version: "v13.0",
    );
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(create: (_) => ChatCubit()),
        BlocProvider(create: (_) => AuthCubit()),
        BlocProvider(create: (_) => TourCubit()),
        BlocProvider(create: (_) => ReviewCubit()),
        BlocProvider(create: (_) => HotelsCubit()),
        BlocProvider(create: (_) => DivingCubit()),
        BlocProvider(create: (_) => RequestCubit()),
        BlocProvider(create: (_) => IslandsCubit()),
        BlocProvider(create: (_) => ResortsCubit()),
        BlocProvider(create: (_) => DiscoverCubit()),
        BlocProvider(create: (_) => ExcursionCubit()),
        ChangeNotifierProvider(create: (_) => AppProvider()),
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: Consumer<AppProvider>(
        builder: (context, value, child) => MaterialChild(
          provider: value,
        ),
      ),
    );
  }
}

class MaterialChild extends StatelessWidget {
  final AppProvider provider;
  const MaterialChild({
    Key? key,
    required this.provider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hop Maldives',
      themeMode: provider.isDark ? ThemeMode.dark : ThemeMode.light,
      theme: theme.themeLight,
      darkTheme: theme.themeDark,
      initialRoute: AppRoutes.splash,
      routes: <String, Widget Function(BuildContext)>{
        AppRoutes.chat: (context) => const ChatScreen(),
        AppRoutes.login: (context) => const LoginScreen(),
        AppRoutes.signup: (context) => const SignupScreen(),
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.booking: (context) => const BookingScreen(),
        AppRoutes.filters: (context) => const FiltersScreen(),
        AppRoutes.aboutUs: (context) => const AboutUsScreen(),
        AppRoutes.requests: (context) => const RequestsScreen(),
        AppRoutes.dashboard: (context) => const DashboardScreen(),
        AppRoutes.onboarding: (context) => const OnboardingScreen(),
        AppRoutes.tourDetails: (context) => const TourDetailsScreen(),
        AppRoutes.tourBooking: (context) => const TourBookingScreen(),
        AppRoutes.popularPlaces: (context) => const PopularPlacesScreen(),
        AppRoutes.bookingDetails: (context) => const BookingDetailsScreen(),
        AppRoutes.divingExcBooking: (context) => const DivingExcBookingScreen(),
      },
    );
  }
}
