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
    apiKey: 'AIzaSyCnzWEFA2TwEbGjW-UWyQxWKF1tcoXhcao',
    appId: '1:26803735170:web:43878e6a8ff9b7ad24c29b',
    messagingSenderId: '26803735170',
    projectId: 'all-mu',
    authDomain: 'all-mu.firebaseapp.com',
    storageBucket: 'all-mu.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1bjr68LPp7SWPAFWtI37vy687bL-ZZx0',
    appId: '1:26803735170:android:ce9a332148eb815824c29b',
    messagingSenderId: '26803735170',
    projectId: 'all-mu',
    storageBucket: 'all-mu.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBlE5pUaW6kZ2CoEgPv72J7tXIxX5y7Cpw',
    appId: '1:26803735170:ios:725705ca7cbe5d7124c29b',
    messagingSenderId: '26803735170',
    projectId: 'all-mu',
    storageBucket: 'all-mu.appspot.com',
    androidClientId: '26803735170-qdis7tpdag6cfb0a0t7k7v5mc4pluhu4.apps.googleusercontent.com',
    iosClientId: '26803735170-pv4kilav9utq6ut69ep5njmjp4k8lt7m.apps.googleusercontent.com',
    iosBundleId: 'com.teamtyro.midwest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBlE5pUaW6kZ2CoEgPv72J7tXIxX5y7Cpw',
    appId: '1:26803735170:ios:725705ca7cbe5d7124c29b',
    messagingSenderId: '26803735170',
    projectId: 'all-mu',
    storageBucket: 'all-mu.appspot.com',
    androidClientId: '26803735170-qdis7tpdag6cfb0a0t7k7v5mc4pluhu4.apps.googleusercontent.com',
    iosClientId: '26803735170-pv4kilav9utq6ut69ep5njmjp4k8lt7m.apps.googleusercontent.com',
    iosBundleId: 'com.teamtyro.midwest',
  );
}
