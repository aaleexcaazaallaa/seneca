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
    apiKey: 'AIzaSyC_NADK7e-lEI395zh-b04Jv4EoxyvT-ug',
    appId: '1:800276532765:web:b22e72ab74ea6489e000f4',
    messagingSenderId: '800276532765',
    projectId: 'isenecafirebasealejandro',
    authDomain: 'isenecafirebasealejandro.firebaseapp.com',
    storageBucket: 'isenecafirebasealejandro.appspot.com',
    measurementId: 'G-JD08LGG8JJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAIXHqPv7cQ7-VVPT7BAvQhI4eT1Q0qZM',
    appId: '1:800276532765:android:62dfd991614d9e70e000f4',
    messagingSenderId: '800276532765',
    projectId: 'isenecafirebasealejandro',
    storageBucket: 'isenecafirebasealejandro.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBz6EN2SvNDHnSXwSz7V6kLhucPfLXiZUs',
    appId: '1:800276532765:ios:05218fe92ad41dc6e000f4',
    messagingSenderId: '800276532765',
    projectId: 'isenecafirebasealejandro',
    storageBucket: 'isenecafirebasealejandro.appspot.com',
    androidClientId: '800276532765-78g220lr086bisvro5rndjtckhgn0c7s.apps.googleusercontent.com',
    iosClientId: '800276532765-6k47njrhhbdkm5mb83b2vqgvqsl7mglv.apps.googleusercontent.com',
    iosBundleId: 'com.example.seneca',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBz6EN2SvNDHnSXwSz7V6kLhucPfLXiZUs',
    appId: '1:800276532765:ios:802a387c6a6710bce000f4',
    messagingSenderId: '800276532765',
    projectId: 'isenecafirebasealejandro',
    storageBucket: 'isenecafirebasealejandro.appspot.com',
    androidClientId: '800276532765-78g220lr086bisvro5rndjtckhgn0c7s.apps.googleusercontent.com',
    iosClientId: '800276532765-k0ludcmqk54ir7erdrv160sjvkievb66.apps.googleusercontent.com',
    iosBundleId: 'com.example.seneca.RunnerTests',
  );
}
