part of 'product_cubit.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoadedState extends ProductState {
  final List<ProductModel> productState;

  ProductLoadedState(this.productState);
  
}

class ProductLoadingState extends ProductState{

}
