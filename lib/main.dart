import 'package:firebase_core/firebase_core.dart';
import 'package:flutstore/app.dart';
import 'package:flutstore/firebase_options.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const App());
}
