// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/data/web_service/interface/web_service_interface.dart';

class AuthRegisterWebService extends WebServiceInterface{
  Future<List<dynamic>> postRegister()async{
    try{
      Response response = await dio.post('Accounts/Rigester',);
      if(response.statusCode == 200 ) {
      print(response.data.toString());
        return response.data ;
      }
    } catch(e){
      print(e.toString());
    }
    return  [];
  }
}