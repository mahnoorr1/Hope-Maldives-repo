import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppProvider extends ChangeNotifier {
  static AppProvider state(BuildContext context, [listen = false]) =>
      Provider.of<AppProvider>(context, listen: listen);

  final cache = Hive.box('app');

  final filterState = GlobalKey<FormBuilderState>();
  final chatFormState = GlobalKey<FormBuilderState>();
  final loginFormState = GlobalKey<FormBuilderState>();
  final signUpFormState = GlobalKey<FormBuilderState>();
  final homeSearchState = GlobalKey<FormBuilderState>();
  final bookingFormState = GlobalKey<FormBuilderState>();
  final forgotPasswordState = GlobalKey<FormBuilderState>();

  /// theme
  bool isDark = false;

  bool get theme => isDark;

  void init() {
    bool? cacheTheme = cache.get('theme');
    isDark = cacheTheme ?? false;

    notifyListeners();
  }

  set theme(bool value) {
    isDark = value;
    cache.put('theme', value);

    notifyListeners();
  }

  /// bottom bar
  int _currentIndex = 0;

  int get index => _currentIndex;

  set index(int value) {
    _currentIndex = value;

    notifyListeners();
  }

  /// filter
  int _currentFilterIndex = 0;

  int get currentFilter => _currentFilterIndex;

  set currentFilter(int value) {
    _currentFilterIndex = value;

    notifyListeners();
  }

  /// onBoarding
  final onBoardingPageController = PageController();
  int onBoardingIndex = 0;

  int get setOnBoardingIndex => onBoardingIndex;

  set setOnBoardingIndex(int v) {
    onBoardingIndex = v;

    notifyListeners();
  }

  /// home filters
  int _homeFilterIndex = 0;
  int get homeFilter => _homeFilterIndex;

  set homeFilter(int value) {
    _homeFilterIndex = value;

    notifyListeners();
  }

  /// diving types
  final List<String> _divingTypes = [];

  List<String> get divingTypes => _divingTypes;

  set addDiveType(String value) {
    _divingTypes.add(value);

    notifyListeners();
  }

  set removeDiveType(String value) {
    _divingTypes.remove(value);

    notifyListeners();
  }

  /// exc types
  final List<String> _excTypes = [];

  List<String> get excTypes => _excTypes;

  set addExcType(String value) {
    _excTypes.add(value);

    notifyListeners();
  }

  set removeExcType(String value) {
    _excTypes.remove(value);

    notifyListeners();
  }
}
