
import 'package:dio/dio.dart';

abstract class WebServiceInterface {
  late Dio dio;
  String baseUrl = 'https://jack07-001-site1.htempurl.com/api/';

  WebServiceInterface(){
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000, // 60 seconds,
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }
  
}