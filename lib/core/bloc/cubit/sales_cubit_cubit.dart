import 'package:bloc/bloc.dart';
import 'package:fashion_style/core/data/model/all_sales_model.dart';
import 'package:fashion_style/core/data/repository/all_sales_repository.dart';
import 'package:meta/meta.dart';

part 'sales_cubit_state.dart';

class SalesCubit extends Cubit<SalesCubitState> {
  final AllSalesRepository allSalesRepository;

  List<AllSalesModel> sales = [];

  SalesCubit(this.allSalesRepository) : super(SalesCubitInitial());

  void getAllSales()async{
    emit(SalesLodingState());
    sales = await allSalesRepository.getAllsalesRepository();
    emit(SalesLoadedState(sales));
  }
}