// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/data/web_service/interface/web_service_interface.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/service/data_storage_service.dart';
import 'package:flutter/material.dart';

class LogOutPage extends WebServiceInterface {
  final DataStorageService _dataStorageService = DataStorageService();

  Future logOut(BuildContext context)async{
    try{
      Response response = await dio.post(
        baseUrl + 'Accounts/Logout'    
      );
      if (response.statusCode == 200) {
        print("[test statusCode] " + response.statusCode.toString());
        _dataStorageService.removeString('user.id');
        Navigator.pushNamed(context, login);
      }
    }catch(e){
      print(e.toString());
    }
  }
}