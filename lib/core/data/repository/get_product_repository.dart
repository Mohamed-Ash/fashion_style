import 'package:fashion_style/core/data/model/get_product.dart';
import 'package:fashion_style/core/data/web_service/product_web_service.dart';

class GetProductRepository {
  final ProductWebService productWebService ;

  GetProductRepository(this.productWebService);

  Future<List<ProductModel>> getProductRepository() async{
    final getProduct = await productWebService.getProduct();
    return getProduct.map((e)=> ProductModel.fromJson(e)).toList();
  }

}