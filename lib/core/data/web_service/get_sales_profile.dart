// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/data/model/get_sales_model.dart';
import 'package:fashion_style/core/data/web_service/interface/web_service_interface.dart';

class GetSalesProfileWebService extends WebServiceInterface{
  static GetSalesModel? getSalesModel;
  Future<List<dynamic>> getProfileSales()async{
    try{
      Response response = await dio.get(baseUrl+ 'Sales/GetSales', );
      print(response.data.toString());
      if(response.statusCode == 200 ) {
        return response.data ;
      }
    } catch(e){
      print(e.toString());
    }
    return  [];
  }

}