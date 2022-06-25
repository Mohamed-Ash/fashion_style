// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:fashion_style/core/l10n/generated/l10n.dart';
import 'package:fashion_style/core/router/route.dart';
import 'package:fashion_style/core/theme/theme_manager.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class App extends StatelessWidget {
  final Routesrs routesrs;
  
  const App({
    Key? key,
    required this.routesrs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
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
      onGenerateRoute: routesrs.genrateRoute,
      theme: getAppThemeData(),
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
