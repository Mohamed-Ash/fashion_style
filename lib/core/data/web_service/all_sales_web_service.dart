// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/data/web_service/interface/web_service_interface.dart';

class AllSalesWebService extends WebServiceInterface{
  Future<List<dynamic>> getAllSales()async{
    try{
      Response response = await dio.get(baseUrl + 'Sales/GetAllSales');
      print(response.data.toString());  
      if(response.statusCode == 200){
        return response.data;
      }else{
        print('error');
      }
    } catch(e){
      print(e.toString());
    }
    return [];
  }  
}