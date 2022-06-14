part of 'sales_cubit.dart';

@immutable
abstract class SalesCubitState {}

class SalesCubitInitial extends SalesCubitState {}
// ignore: must_be_immutable
class SalesLoadedState extends SalesCubitState {
  final List<AllSalesModel> sales;

  SalesLoadedState(this.sales);
}
class SalesLodingState extends SalesCubitState{
  
}
