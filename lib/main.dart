import 'package:fashion_style/core/app.dart';
import 'package:fashion_style/core/router/route.dart';
import 'package:fashion_style/core/service/auth_service.dart';
import 'package:fashion_style/core/service/data_storage_service.dart';
import 'package:fashion_style/core/service/settings_service.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  debugPrint('[fashion_style] Initializing Services');
  await SettingsService().initialize();
  await DataStorageService().initialize();
  await AuthService().initialize();


  debugPrint('[fashion_style] Initializing Reflections');

  debugPrint('[fashion_style] Starting App');
  runApp(App(routesrs: Routesrs(),));
  debugPrint('[fashion_style]  App Started');
}