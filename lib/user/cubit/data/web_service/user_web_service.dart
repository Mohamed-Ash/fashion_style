// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/user/cubit/data/web_service/_interface/web_service_interface.dart';

class UserWebService extends WebServiceInterface{
  
  Future<List<dynamic>> getAllUsers() async {
    try{
      Response respons = await dio.get(baseUrl+'Users/GetAllUsers');
      if(respons.statusCode == 200){
        return respons.data;
      }
    }catch(e){
      print(e.toString());
    }
    return [];
  }
}