
// ignore_for_file: prefer_const_constructors

import 'package:fashion_style/user/basket/basket_page/basket_page.dart';
import 'package:fashion_style/user/home/home_page.dart';
import 'package:fashion_style/user/reels/reels_page/reels_page.dart';
import 'package:fashion_style/user/sales/sales_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'api_data_bloc_state.dart';

class ApiDataBloc extends Cubit<ApiDataBlocState> {
  ApiDataBloc() : super(ApiDataBlocInitial());
  static ApiDataBloc get(context) => BlocProvider.of(context); 

  int currentIndex = 0 ;

  List<Widget> screens = [
    const HomePage(),
    const SalesPage(),
    ReelsPage(),
    const BasketPage()
  ];

  void changeIndex(int index){
    currentIndex = index ;
    emit(ChangeIndexState());
 }
 
}
