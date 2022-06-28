

import 'package:fashion_style/account_sales/account_sales_page/account_sales_page.dart';
import 'package:fashion_style/account_sales/profile_sales_widget/item_profile_sales_widget.dart';
import 'package:fashion_style/admin/active_sales/active_sales_page/active_sales.dart';
import 'package:fashion_style/admin/admin_all_order/admin_all_order_page/admin_all_order_page.dart';
import 'package:fashion_style/admin/admin_reels/admin_reels_page/admin_reels.dart';
import 'package:fashion_style/admin/admin_sales_number/admin_sales_number_page/admin_sales_number_page.dart';
import 'package:fashion_style/admin/admin_sales_product/admin_sales_product_page/admin_sales_product_page.dart';
import 'package:fashion_style/admin/admin_user_number/admin_user_nmber_page/admin_user_number_page.dart';
import 'package:fashion_style/admin/admin_interface/admin_dashboard.dart';
import 'package:fashion_style/core/auth/forget_password/forget_password.dart';
import 'package:fashion_style/core/auth/login/login_form_page/login_page.dart';
import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:fashion_style/core/data/model/all_sales_model.dart';
import 'package:fashion_style/core/data/model/get_product.dart';
import 'package:fashion_style/core/page/app_layout_page.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/user/carousel_slider/test_image_page.dart';
import 'package:fashion_style/user/favorite/favorite_page/favorite_page.dart';
import 'package:fashion_style/user/payments/page/payments_page.dart';
import 'package:fashion_style/user/product/product_page/preview_product_page.dart';
import 'package:fashion_style/user/product/product_page/product_page.dart';
import 'package:fashion_style/user/product/product_page/product_sell_page.dart';
import 'package:fashion_style/user/profile/profile_page/create_profile_page.dart';
import 'package:fashion_style/user/profile/profile_page/profile_page.dart';
import 'package:fashion_style/user/sales/sales_page/sales_page.dart';
import 'package:fashion_style/user/search/search_page/search_page.dart';
import 'package:fashion_style/user/settings/settings_page/settngs_page.dart';
import 'package:flutter/material.dart';

class Routesrs{

  Route? genrateRoute(RouteSettings settings) {
    switch (settings.name) {

      // Todo: auth 
      case login :                              return MaterialPageRoute(builder: (_) => const LoginPage(),);
      case register:                            return MaterialPageRoute(builder: (_) => const Registerpage());   
      case forgetPassword:                      return MaterialPageRoute(builder: (_) => const ForgetPassword());   
      case craeteUserProfile:                   return MaterialPageRoute(builder: (_) => CreateProfilePage());       


      // Todo: user 
      case testpage:                            return MaterialPageRoute(builder: (_) => const TestImagePage());       
      case setting:                             return MaterialPageRoute(builder: (_) => const SettngsPage());       
      case favorite:                            return MaterialPageRoute(builder: (_) => FavoritePage());       
      case product:                             return MaterialPageRoute(builder: (_) => const ProductPage());       
      case sales:                               return MaterialPageRoute(builder: (_) => const SalesPage());       
      case producitem:                          return MaterialPageRoute(builder: (_) => const ProductItemSellPage());      
      case userProfilePage:                     return MaterialPageRoute(builder: (_) => const ProfilePage());      
      case search:                              return MaterialPageRoute(builder: (_) => const SearchPage()); 
      case appPage:                             return MaterialPageRoute(builder: (_) => const AppLayoutPage());     
      case appLayoutPage:                       return MaterialPageRoute(builder: (_) => const AppLayoutPage());      
      case payments:                       return MaterialPageRoute(builder: (_) => const PaymentsPage());      
      case activeSales:                         return MaterialPageRoute(builder: (_) => const ActiveSales());  
      case previewProduct:
        final previewItemProduct = settings.arguments as ProductModel;                      
        return MaterialPageRoute(builder: (_) => PreviewProductPage(productModel: previewItemProduct));  

      // Todo: admin   
      case adminDashboard:                      return MaterialPageRoute(builder: (_) => const AdminDashboard());     
      case adminAllOrders:                      return MaterialPageRoute(builder: (_) => AdminAllOrdersPage());      
      case adminReels:                          return MaterialPageRoute(builder: (_) => const AdminReels());      
      case adminSalesNumber:                    return MaterialPageRoute(builder: (_) => const AdminSalesNumberPage());      
      case adminSalesProduct:                   return MaterialPageRoute(builder: (_) => const AdminSalesProduct());      
      case adminUserNumber:                     return MaterialPageRoute(builder: (_) => const AdminUserNumberPage());       
     
     
      // Todo: accountSales 
      case accountSales:                        return MaterialPageRoute(builder: (_) => const AccountSalesPage());
      case profileSales:         
        final prfileSales = settings.arguments as AllSalesModel ;
        return MaterialPageRoute(builder: (_) =>  ItemProfileSalesWidget(allSalesModel: prfileSales,));
    }
    return null;
  }
}