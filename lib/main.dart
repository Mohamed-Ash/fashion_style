// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:fashion_style/core/app.dart';
import 'package:fashion_style/core/router/route.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('[fashion_style] Initializing Reflections');

  print('[fashion_style] Starting App');
  runApp(App(routesrs: Routesrs(),));
  print('[fashion_style]  App Started');
}