// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:fashion_style/core/app.dart';
import 'package:fashion_style/core/router/route.dart';
import 'package:fashion_style/core/auth/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  print('[fashion_style] Initializing Reflections');
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print('[fashion_style] Starting App');
    // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  runApp(App(routesrs: Routesrs(),));
  print('[fashion_style]  App Started');
}
//http://jack07-001-site1.htempurl.com/swagger/index.html