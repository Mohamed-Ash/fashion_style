part of 'profile_sales_cubit.dart';

@immutable
abstract class ProfileSalesState {}

class ProfileSalesInitial extends ProfileSalesState {

}

class ProfileSalesLoadedState extends ProfileSalesState {
  final List<GetSalesModel> salesModel;

  ProfileSalesLoadedState(this.salesModel);
}

class ProfileSalesLoadingState extends ProfileSalesState{

}