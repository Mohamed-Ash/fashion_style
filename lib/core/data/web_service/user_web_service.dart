// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/data/web_service/interface/web_service_interface.dart';

class UserWebService extends WebServiceInterface{
  
  Future<dynamic> getUserProfile({required String id,}) async {
    try{
      Response respons = await dio.get(
        baseUrl+'Accounts/GetUser?',
        queryParameters: {
          'id' : id,
        },
      );///'f2fb6681-31f2-4ba9-8da6-7931ca04ac02'
        print(id.toString());
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