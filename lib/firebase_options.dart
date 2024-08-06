// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' ;
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
    apiKey: 'AIzaSyAu1SeCxXoZGWgeR4qEY3AOyxrI3s23YjQ',
    appId: '1:745080695567:web:a3dd2007d6ebdda469ac7a',
    messagingSenderId: '745080695567',
    projectId: 'authentication-595d7',
    authDomain: 'authentication-595d7.firebaseapp.com',
    storageBucket: 'authentication-595d7.appspot.com',
    measurementId: 'G-K74QVGX2YZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDo3ss9cE1X5dpXE8hCSbTWwHTtST1Fkhk',
    appId: '1:745080695567:android:ac5f05f2db33353a69ac7a',
    messagingSenderId: '745080695567',
    projectId: 'authentication-595d7',
    storageBucket: 'authentication-595d7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBaBUrQdvgPHhAoj2KjjENO51vxUAQB2AM',
    appId: '1:745080695567:ios:dcc8988f3fd6175169ac7a',
    messagingSenderId: '745080695567',
    projectId: 'authentication-595d7',
    storageBucket: 'authentication-595d7.appspot.com',
    iosBundleId: 'com.example.authe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBaBUrQdvgPHhAoj2KjjENO51vxUAQB2AM',
    appId: '1:745080695567:ios:dcc8988f3fd6175169ac7a',
    messagingSenderId: '745080695567',
    projectId: 'authentication-595d7',
    storageBucket: 'authentication-595d7.appspot.com',
    iosBundleId: 'com.example.authe',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAu1SeCxXoZGWgeR4qEY3AOyxrI3s23YjQ',
    appId: '1:745080695567:web:7c0570d886b543e269ac7a',
    messagingSenderId: '745080695567',
    projectId: 'authentication-595d7',
    authDomain: 'authentication-595d7.firebaseapp.com',
    storageBucket: 'authentication-595d7.appspot.com',
    measurementId: 'G-G2WGXPRWN3',
  );

}