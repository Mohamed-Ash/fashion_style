import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'account_sales_state.dart';

class AccountSalesCubit extends Cubit<AccountSalesState> {
  AccountSalesCubit() : super(AccountSalesInitial());
}
