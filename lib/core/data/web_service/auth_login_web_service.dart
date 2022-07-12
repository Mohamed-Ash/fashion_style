// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/data/model/auth_login_model.dart';
import 'package:fashion_style/core/data/web_service/interface/web_service_interface.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/service/auth_service.dart';
import 'package:fashion_style/core/service/data_storage_service.dart';
import 'package:flutter/material.dart';

class AuthLoginWebSevice extends WebServiceInterface{
  final DataStorageService _dataStorageService = DataStorageService();
  final AuthLoginModel authLoginModel = AuthLoginModel(); 

  Future loginWidget({
    required String email, 
    required String  password, 
    // required BuildContext context,
  }) async{
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
        AuthService().statusMessage = response.data["statusMessage"];
        print("test massage " + response.data["statusMessage"].toString());
         _dataStorageService.saveString('user.id','${response.data["userId"]}');
        // response.data['userId'];
        print(response.statusCode.toString());
      }
          print('test post login ' +  response.toString());
    }catch(e){
      print(e.toString());
    }
    return [];
  }
}