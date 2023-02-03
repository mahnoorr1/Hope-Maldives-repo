// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCEdZndAaaS6NTs1nQwuTKRfeLw-ySJwpk',
    appId: '1:740223164484:web:1c3e402943e818a4921c11',
    messagingSenderId: '740223164484',
    projectId: 'hopmaldives-6c647',
    authDomain: 'hopmaldives-6c647.firebaseapp.com',
    storageBucket: 'hopmaldives-6c647.appspot.com',
    measurementId: 'G-542E3HVR4H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDNG9diNeB8Bn-8hvTShP-Mg9YMzOHsVKI',
    appId: '1:740223164484:android:d610e628413dd9b9921c11',
    messagingSenderId: '740223164484',
    projectId: 'hopmaldives-6c647',
    storageBucket: 'hopmaldives-6c647.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCv67wuNv-YSyuNtBTQ6vf-cz4TWgy7XgQ',
    appId: '1:740223164484:ios:2508054751ab5ae3921c11',
    messagingSenderId: '740223164484',
    projectId: 'hopmaldives-6c647',
    storageBucket: 'hopmaldives-6c647.appspot.com',
    iosClientId: '740223164484-6o9kht38afpltgcu8cabvrt363ki2le6.apps.googleusercontent.com',
    iosBundleId: 'com.dexplat.hopMaldives',
  );
}