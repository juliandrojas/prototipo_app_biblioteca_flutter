import 'package:prototipo_app_biblioteca_flutter/src/app/app.dart';
import 'package:prototipo_app_biblioteca_flutter/src/app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App());
}