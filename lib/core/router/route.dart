// ignore_for_file: body_might_complete_normally_nullable

import 'package:fashion_style/account_sales/account_sales_page/account_sales_page.dart';
import 'package:fashion_style/admin/interface/admin_dashboard.dart';
import 'package:fashion_style/core/auth/login/login_form_page/login_page.dart';
import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:fashion_style/core/page/app_layout_page.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/user/carousel_slider/test_image_page.dart';
import 'package:fashion_style/user/favorite/favorite_page/favorite_page.dart';
import 'package:fashion_style/user/home/home_page.dart';
import 'package:fashion_style/user/product_item/product_item_sell/product_item_sell_page/product_item_sell_page.dart';
import 'package:fashion_style/user/product_item/product_page/product_item_page.dart';
import 'package:fashion_style/user/profile/create_user_profile_page/create_user_profile_page.dart';
import 'package:fashion_style/user/profile/user_profile_page/user_profile_page.dart';
import 'package:fashion_style/user/sales/sales_page.dart';
import 'package:fashion_style/user/search/search_page/search_page.dart';
import 'package:fashion_style/user/settings/settings_page/settngs_page.dart';
import 'package:flutter/material.dart';

class Routesrs{

  Route? genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login :                              return MaterialPageRoute(builder: (_) => LoginPage(),);
      case register:                            return MaterialPageRoute(builder: (_) => Registerpage());   
      case testpage:                            return MaterialPageRoute(builder: (_) => TestImagePage());       
      case craeteUserProfile:                   return MaterialPageRoute(builder: (_) => CreateUserProfilePage());       
      case setting:                             return MaterialPageRoute(builder: (_) => const SettngsPage());       
      case accountsales:                        return MaterialPageRoute(builder: (_) => const AccountSalesPage());       
      case favorite:                            return MaterialPageRoute(builder: (_) => const FavoritePage());       
      case product:                             return MaterialPageRoute(builder: (_) => const ProductPage());       
      case sales:                               return MaterialPageRoute(builder: (_) => const SalesPage());       
      case producitem:                          return MaterialPageRoute(builder: (_) => const ProductItemSellPage());      
      case home:                                return MaterialPageRoute(builder: (_) => const HomePage());      
      case userProfilePage:                     return MaterialPageRoute(builder: (_) => UserProfilePage());      
      case search:                              return MaterialPageRoute(builder: (_) => SearchPage()); 
      case appPage:                             return MaterialPageRoute(builder: (_) => const AppLayoutPage());     
      case adminDashboard:                           return MaterialPageRoute(builder: (_) =>  AdminDashboard());     
     
    }
  }
}