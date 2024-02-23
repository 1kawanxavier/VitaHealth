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
    apiKey: 'AIzaSyD9EnQ5-wje3WBCYSTGnA9ihTE5eXTFsfc',
    appId: '1:176768629207:web:684b434afed2a239e1b392',
    messagingSenderId: '176768629207',
    projectId: 'vitahealth-b56b2',
    authDomain: 'vitahealth-b56b2.firebaseapp.com',
    databaseURL: 'https://vitahealth-b56b2-default-rtdb.firebaseio.com',
    storageBucket: 'vitahealth-b56b2.appspot.com',
    measurementId: 'G-XPE3TK0ZN8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD32MK4o7tT39kAi_eZ1HblMxqzcZUbyb8',
    appId: '1:176768629207:android:b3174638883f8d36e1b392',
    messagingSenderId: '176768629207',
    projectId: 'vitahealth-b56b2',
    databaseURL: 'https://vitahealth-b56b2-default-rtdb.firebaseio.com',
    storageBucket: 'vitahealth-b56b2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3Oh0ZgcLoaYl5hg6bBy8XHAZs2S2KYJA',
    appId: '1:176768629207:ios:ddb94c3c3cce2ba4e1b392',
    messagingSenderId: '176768629207',
    projectId: 'vitahealth-b56b2',
    databaseURL: 'https://vitahealth-b56b2-default-rtdb.firebaseio.com',
    storageBucket: 'vitahealth-b56b2.appspot.com',
    iosBundleId: 'com.example.crudfirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC3Oh0ZgcLoaYl5hg6bBy8XHAZs2S2KYJA',
    appId: '1:176768629207:ios:a0b58b352d851190e1b392',
    messagingSenderId: '176768629207',
    projectId: 'vitahealth-b56b2',
    databaseURL: 'https://vitahealth-b56b2-default-rtdb.firebaseio.com',
    storageBucket: 'vitahealth-b56b2.appspot.com',
    iosBundleId: 'com.example.crudfirebase.RunnerTests',
  );
}
