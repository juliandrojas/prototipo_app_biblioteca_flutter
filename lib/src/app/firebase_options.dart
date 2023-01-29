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
    apiKey: 'AIzaSyBuJauciYdQ89jgCKr7UM2IRWaT8nJFAZk',
    //ID de la APP
    appId: '1:812816499243:android:050945c614522086c0206e',
    //Número de proyecto
    messagingSenderId: '812816499243',
    //ID del proyecto
    projectId: 'prototipoappbiblioteca-7d2dd',
  );
}
