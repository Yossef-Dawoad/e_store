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
        return macos;
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
    apiKey: 'AIzaSyA7WAjtBhQE8cuLalJURUWrIaLaOsN7wT0',
    appId: '1:658290314842:web:ff80b17aff875959ac9263',
    messagingSenderId: '658290314842',
    projectId: 'el-lstore',
    authDomain: 'el-lstore.firebaseapp.com',
    storageBucket: 'el-lstore.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAs9OH4zRiJHZOeYLZznUfGXiVeDB9uxQ',
    appId: '1:658290314842:android:deb6695311bd51caac9263',
    messagingSenderId: '658290314842',
    projectId: 'el-lstore',
    storageBucket: 'el-lstore.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4lSNcUlZCSlwjv6QabO2UTnWQfi6u-F4',
    appId: '1:658290314842:ios:84047b7d08583475ac9263',
    messagingSenderId: '658290314842',
    projectId: 'el-lstore',
    storageBucket: 'el-lstore.appspot.com',
    androidClientId: '658290314842-uqccprij6hijhkor5gj5pkg4jsp8gh61.apps.googleusercontent.com',
    iosClientId: '658290314842-bt5p0ssaet6k7ag83lgj1prjktv9ncte.apps.googleusercontent.com',
    iosBundleId: 'com.example.eStore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4lSNcUlZCSlwjv6QabO2UTnWQfi6u-F4',
    appId: '1:658290314842:ios:3a3432514c534156ac9263',
    messagingSenderId: '658290314842',
    projectId: 'el-lstore',
    storageBucket: 'el-lstore.appspot.com',
    androidClientId: '658290314842-uqccprij6hijhkor5gj5pkg4jsp8gh61.apps.googleusercontent.com',
    iosClientId: '658290314842-p6lgjea04djc48ps431i4u16knbesdeo.apps.googleusercontent.com',
    iosBundleId: 'com.example.eStore.RunnerTests',
  );
}
