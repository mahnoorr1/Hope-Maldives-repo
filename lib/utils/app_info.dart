import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  static late int buildNo;
  static String? packageName;
  static String? versionName;
  static String? buildNumber;

  static init(PackageInfo package) {
    buildNo = int.parse(
      package.buildNumber.replaceAll(RegExp("[a-z]"), ""),
    );
    packageName = package.packageName;
    versionName = package.version;
    buildNumber = package.buildNumber;
  }
}
