// ignore_for_file: body_might_complete_normally_nullable

import 'package:fashion_style/admin/interface/admin_interface.dart';
import 'package:fashion_style/core/auth/login/login_form_page/login_page.dart';
import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/user/carousel_slider/test_image_page.dart';
import 'package:flutter/material.dart';

class Routesrs{

  Route? genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login :                  
        return MaterialPageRoute(builder: (_) => const LoginPage(),);
      case register:
        return MaterialPageRoute(builder: (_) => const Registerpage());
      case layout:
        return MaterialPageRoute(builder: (_) =>  PageLayoutInterface());        
      case admin:
        return MaterialPageRoute(builder: (_) => const AdminInterface());  
      case testpage:
        return MaterialPageRoute(builder: (_) => const TestImagePage());       
    }
  }
}