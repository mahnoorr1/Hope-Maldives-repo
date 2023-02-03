import 'package:url_launcher/url_launcher.dart';

class LauncherUtil {
  static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

    await launchUrl(Uri.parse(googleUrl));
  }

  static Future<void> openSocialProfiles(int index) async {
    String instagramURL = 'https://www.instagram.com/hopmaldives/';
    String twitterURL = 'https://twitter.com/hopmaldives/';
    String facebookURL = 'https://www.facebook.com/hopmaldives/';

    switch (index) {
      case 0:
        await launchUrl(Uri.parse(instagramURL));
        break;
      case 1:
        await launchUrl(Uri.parse(facebookURL));
        break;
      case 2:
        await launchUrl(Uri.parse(twitterURL));
        break;
    }
  }
}
