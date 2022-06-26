// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/data/web_service/interface/web_service_interface.dart';

class ProductWebService extends WebServiceInterface{
  Future<List<dynamic>> getProduct() async {
    try{
      Response response = await dio.get(baseUrl + 'products/GetProduct');
      print (response.data.toString());
      if(response.statusCode == 200) {
        return response.data ;
      }
    }catch(e){
      print(e.toString());
    }
    return [];
  }
}