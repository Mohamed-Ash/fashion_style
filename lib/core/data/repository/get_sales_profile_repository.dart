import 'package:fashion_style/core/data/model/get_sales_model.dart';
import 'package:fashion_style/core/data/web_service/get_sales_profile.dart';

class GetSalesProfileRepository{
  final GetSalesProfileWebService getSalesProfileWebService;

  GetSalesProfileRepository(this.getSalesProfileWebService);

  Future<List<GetSalesModel>> getSalesProfile()async{
    final getSales = await getSalesProfileWebService.getProfileSales();
    return getSales.map((e) => GetSalesModel.fromJson(e)).toList();
  }
}