import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_sales_state.dart';

class BlocSalesCubit extends Cubit<BlocSalesState> {
  BlocSalesCubit() : super(BlocSalesInitial());
}
