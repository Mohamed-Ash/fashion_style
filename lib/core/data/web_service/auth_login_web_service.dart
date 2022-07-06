// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/data/web_service/interface/web_service_interface.dart';
import 'package:fashion_style/core/service/auth_service.dart';
class AuthLoginWebSevice extends WebServiceInterface{
  
  Future<dynamic> loginWidget({required String email, required String password,})async{
    try{
      Response response = await dio.post(
        baseUrl + 'Accounts/Login',
        data: {
          "email": email,
          "password": password,
          "rememberMe": true,
        } ,    
      );
      if (response.statusCode == 200) {
        AuthService().id = response.data['userId'];
        // response.data['userId'];
        print(response.statusCode.toString());
        //  Navigator.pushNamed(BuildContext context, appPage);
        return response.data;
        //Navigator.pushNamed(context, appPage);
      }
    }catch(e){
      print(e.toString());
    }
    return [];
  }
}