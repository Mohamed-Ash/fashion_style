import 'package:bloc/bloc.dart';
import 'package:fashion_style/core/data/model/get_sales_model.dart';
import 'package:fashion_style/core/data/repository/get_sales_profile_repository.dart';
import 'package:meta/meta.dart';

part 'profile_sales_state.dart';

class ProfileSalesCubit extends Cubit<ProfileSalesState> {
  final GetSalesProfileRepository getSalesProfileRepository;

  List<GetSalesModel> salesModel = [];

  ProfileSalesCubit(this.getSalesProfileRepository) : super(ProfileSalesInitial());

  void getProfileSales()async{
    salesModel = await getSalesProfileRepository.getSalesProfile();
    emit(ProfileSalesLoadedState(salesModel));
  }

}
