// ignore_for_file: prefer_const_constructors

import 'package:fashion_style/core/auth/login/login_form_page/login_page.dart';
import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:  '/',
      routes: {
        '/' : (cxt) => LoginPage(),
        '/register' : (cxt) => Registerpage(),
      },
    );
    /* return MaterialApp.router(
      key: key,
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'dolly_fashion_eg',
    ); */
  }

}