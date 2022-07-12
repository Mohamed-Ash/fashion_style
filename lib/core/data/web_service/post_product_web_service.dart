// ignore_for_file: avoid_print, equal_keys_in_map

import 'package:dio/dio.dart';
import 'package:fashion_style/core/data/web_service/interface/web_service_interface.dart';

class PostProductWebSerivice extends WebServiceInterface{
  Future postProduct() async{
    try{
      Response response = await dio.post(
        baseUrl + 'Products/AddProduct',
        data: {
          "id" :"0",
          "name" :"Mohamed",
          "description" :"Mohamed Ashraf",
          "price" :"22.8",
        }
      ); 
      print(response.statusCode);
      if (response.statusCode == 200) {
        print('تم رفع المنج بنجاح'); 
      }
    }catch(e){
      print(e.toString);
    }
    return [];
  }
}