// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCR_LB6xfRJ3YpkDZG0A_yV27LUCTMhNRY',
    appId: '1:101696041202:web:f1c1aba9d6eef700cf206b',
    messagingSenderId: '101696041202',
    projectId: 'skin-disease-103cd',
    authDomain: 'skin-disease-103cd.firebaseapp.com',
    storageBucket: 'skin-disease-103cd.firebasestorage.app',
    measurementId: 'G-PLNWGMK3RQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCi04UudhY2nVSGuqzLmnQWsqEYGwWnv6w',
    appId: '1:101696041202:android:6d132576becc2a29cf206b',
    messagingSenderId: '101696041202',
    projectId: 'skin-disease-103cd',
    storageBucket: 'skin-disease-103cd.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZh8ibafv-yTjM7vSWvVe8BZPVu3YlePs',
    appId: '1:101696041202:ios:ae8377050fde0943cf206b',
    messagingSenderId: '101696041202',
    projectId: 'skin-disease-103cd',
    storageBucket: 'skin-disease-103cd.firebasestorage.app',
    iosBundleId: 'com.example.skinDiseaseDetection',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDZh8ibafv-yTjM7vSWvVe8BZPVu3YlePs',
    appId: '1:101696041202:ios:ae8377050fde0943cf206b',
    messagingSenderId: '101696041202',
    projectId: 'skin-disease-103cd',
    storageBucket: 'skin-disease-103cd.firebasestorage.app',
    iosBundleId: 'com.example.skinDiseaseDetection',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCR_LB6xfRJ3YpkDZG0A_yV27LUCTMhNRY',
    appId: '1:101696041202:web:c435c6e6da4d2f14cf206b',
    messagingSenderId: '101696041202',
    projectId: 'skin-disease-103cd',
    authDomain: 'skin-disease-103cd.firebaseapp.com',
    storageBucket: 'skin-disease-103cd.firebasestorage.app',
    measurementId: 'G-TYN169LMYW',
  );
}
