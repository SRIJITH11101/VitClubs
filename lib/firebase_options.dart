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
    apiKey: 'AIzaSyBPtMqoWl0l_u8NThlX4lstBCNId5awH10',
    appId: '1:838984084679:web:f7dde307eee2d193c4e2e2',
    messagingSenderId: '838984084679',
    projectId: 'vitclubs-ea408',
    authDomain: 'vitclubs-ea408.firebaseapp.com',
    storageBucket: 'vitclubs-ea408.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5pRhleGkyIhp0niXQhts1jzkf7xPCD0U',
    appId: '1:838984084679:android:275b8f4a4bbbcab0c4e2e2',
    messagingSenderId: '838984084679',
    projectId: 'vitclubs-ea408',
    storageBucket: 'vitclubs-ea408.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1cAu4yFUsCVGNJ5Uwgo_uL2FSPTHV3BI',
    appId: '1:838984084679:ios:5dba01a3f7b3d2b0c4e2e2',
    messagingSenderId: '838984084679',
    projectId: 'vitclubs-ea408',
    storageBucket: 'vitclubs-ea408.appspot.com',
    iosBundleId: 'com.example.vitclubs',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1cAu4yFUsCVGNJ5Uwgo_uL2FSPTHV3BI',
    appId: '1:838984084679:ios:a29fb8409fe662f9c4e2e2',
    messagingSenderId: '838984084679',
    projectId: 'vitclubs-ea408',
    storageBucket: 'vitclubs-ea408.appspot.com',
    iosBundleId: 'com.example.vitclubs.RunnerTests',
  );
}
