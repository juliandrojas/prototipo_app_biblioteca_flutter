import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseOptions {
  const DefaultFirebaseOptions._();

  static FirebaseOptions get currentPlatform {
    if (kIsWeb) throw UnsupportedError('Unsupported platform');
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return _android;
      case TargetPlatform.fuchsia:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.iOS:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.linux:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.macOS:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.windows:
        throw UnsupportedError('Unsupported platform');
    }
  }

  //Datos extraídos de la sección "Configuración del proyecto"
  static const FirebaseOptions _android = FirebaseOptions(
    //Clave API WEB
    apiKey: 'AIzaSyB8OZoV95PIC0RA9GOiZ8hqONKND0KtrlU',
    //ID de la APP
    appId: '1:11985974195:android:ae4e13a3012194d4c651c6',
    //Número de proyecto
    messagingSenderId: '11985974195',
    //ID del proyecto
    projectId: 'prototipoappbiblioteca-83086',
  );
}
