// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:fashion_style/app.dart';
import 'package:fashion_style/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  print('[dolly_fashion] Initializing Reflections');
  WidgetsFlutterBinding.ensureInitialized();
    print('[dolly_fashion] Starting App');
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
   await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  runApp(App());
  print('[dolly_fashion]  App Started');
}
