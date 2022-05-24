// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:fashion_style/core/router/route.dart';
import 'package:fashion_style/core/theme/theme_manager.dart';
import 'package:flutter/material.dart';
class App extends StatelessWidget {
  final Routesrs routesrs;
  
  const App({
    Key? key,
    required this.routesrs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routesrs.genrateRoute,
      theme: getAppThemeData(),
      //theme: Themes().theme,
      /* initialRoute:  '/login',
      routes: {
        '/login' : (cxt) => LoginPage(),
        '/register' : (cxt) => Registerpage(),
        '/layout' : (cxt) => PageLayoutInterface(),
      }, */
    );
  }

}
