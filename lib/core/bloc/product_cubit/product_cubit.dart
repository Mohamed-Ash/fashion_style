import 'package:bloc/bloc.dart';
import 'package:fashion_style/core/data/model/get_product.dart';
import 'package:fashion_style/core/data/repository/get_product_repository.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final GetProductRepository getProductRepository;
  
  List<ProductModel> productModel = [];
   
  ProductCubit(this.getProductRepository) : super(ProductInitial());

  getAllProduct()async{
    emit(ProductLoadingState());
    productModel = await getProductRepository.getProductRepository();
    emit(ProductLoadedState(productModel));
  }

}
