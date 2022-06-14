import 'package:fashion_style/core/data/model/all_sales_model.dart';
import 'package:fashion_style/core/data/web_service/all_sales_web_service.dart';

class AllSalesRepository{
  final AllSalesWebService allSalesWebService;

  AllSalesRepository(this.allSalesWebService);

  Future<List<AllSalesModel>> getAllsalesRepository()async{
    final sales = await allSalesWebService.getAllSales();
    return sales.map((slae) => AllSalesModel.fromJson(slae)).toList();
  }
  
}