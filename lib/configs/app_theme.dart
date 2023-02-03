import 'package:flutter/material.dart';
import 'app_core_theme.dart';

class AppTheme {
  static final _core = AppCoreTheme(
    primary: const Color(0xffE2644D),
    shadow: Colors.black.withOpacity(0.20),
    shadowSub: const Color.fromARGB(255, 194, 194, 194),
    textSub: const Color(0xff828282),
  );

  static AppCoreTheme light = _core.copyWith(
    background: Colors.white,
    backgroundSub: const Color(0xffF0F0F0),
    scaffold: const Color(0xfffefefe),
    scaffoldDark: const Color(0xfffcfcfc),
    text: const Color(0xff484848),
    textSub2: const Color.fromARGB(255, 94, 94, 94),
    textSub: Colors.black,
    shadow: const Color(0xff808080),
  );

  static AppCoreTheme dark = _core.copyWith(
    background: Colors.grey[900],
    backgroundSub: const Color(0xff1c1c1e),
    scaffold: const Color(0xff0e0e0e),
    text: Colors.white,
    textSub2: Colors.white.withOpacity(0.25),
    textSub: Colors.white,
    shadow: const Color(0xff808080),
  );

  static AppCoreTheme? c;

  // Init
  static init(BuildContext context) {
    c = isDark(context) ? dark : light;
  }

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}
