// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/data/web_service/interface/web_service_interface.dart';

class UserWebService extends WebServiceInterface{
  
  Future<List<dynamic>> getProfileUsers() async {
    try{
      Response respons = await dio.get(baseUrl+'Users/GetAllUsers');
      print(respons.data.toString());
      if(respons.statusCode == 200){
        return respons.data;
      }
    }catch(e){
      print(e.toString());
    }
    return [];
  }
}