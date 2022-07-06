// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
// ignore_for_file: prefer_const_constructors

import 'package:fashion_style/core/auth/login/login_form_page/login_page.dart';
import 'package:fashion_style/core/l10n/generated/l10n.dart';
import 'package:fashion_style/core/page/app_layout_page.dart';
import 'package:fashion_style/core/router/route.dart';
import 'package:fashion_style/core/service/auth_service.dart';
import 'package:fashion_style/core/service/data_storage_service.dart';
import 'package:fashion_style/core/service/settings_service.dart';
import 'package:fashion_style/core/theme/theme_manager.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class App extends StatefulWidget {
  final Routesrs routesrs;
  
  const App({
    Key? key,
    required this.routesrs,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}
  DataStorageService _dataStorageService = DataStorageService();
// user.id
//  var _loginData = _dataStorageService.getString('sss');
//  .getString('email');
  
      
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) { 
    return AnimatedBuilder(
      animation: SettingsService(),
      builder: (context, child) {
        return MaterialApp(
          locale: SettingsService().locale,
          localizationsDelegates: const [
            S.delegate,
            AppLocalizationDelegate(),
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            // AppForm.FormBuilderLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          scrollBehavior: MyCustomScrollBehavior(),
          // ignore: unnecessary_null_comparison
          initialRoute: _dataStorageService.getString('user.id') == null ? '/': '/app_page',
          onGenerateRoute: widget.routesrs.genrateRoute,
          theme: getAppThemeData(),
        );
      },
    );
  }
}
class MyCustomScrollBehavior extends MaterialScrollBehavior{

  Set<PointerDeviceKind> get  device =>{
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.touch,
    PointerDeviceKind.unknown,
  };
}

class LanguageIntent extends Intent {}
