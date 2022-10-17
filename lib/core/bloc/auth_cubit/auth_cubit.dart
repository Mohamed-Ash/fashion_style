
// ignore_for_file: prefer_const_constructors

import 'package:fashion_style/core/service/auth_service.dart';
import 'package:fashion_style/user/basket/basket_page/basket_page.dart';
import 'package:fashion_style/user/home/home_page.dart';
import 'package:fashion_style/user/profile/profile_page/profile_page.dart';
import 'package:fashion_style/user/reels/reels_page/reels_page.dart';
import 'package:fashion_style/user/sales/sales_page/sales_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {

  AuthCubit() : super(AuthCubitInithial());

  static AuthCubit get(context) => BlocProvider.of(context); 
  
  int currentIndex = 0 ;

  List<Widget> screens = [
    HomePage(),
    SalesPage(),
    ReelsPage(),
    ProfilePage(id: AuthService().id,),
  ];

  void changeIndex(int index){
    currentIndex = index ;
    emit(ChangeIndexState());
 }
 
}
