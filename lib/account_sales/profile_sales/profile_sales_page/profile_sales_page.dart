// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fashion_style/account_sales/account_sales_widget/account_sales_widget.dart';
import 'package:fashion_style/account_sales/profile_sales/profile_sales_widget/profile_sales_widget.dart';
import 'package:fashion_style/core/bloc/profile_sales_cubit/profile_sales_cubit.dart';
import 'package:fashion_style/core/data/repository/get_sales_profile_repository.dart';
import 'package:fashion_style/core/data/web_service/get_sales_profile.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ProfileSalesPage extends UserInterface{
  const ProfileSalesPage({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
   return  BlocProvider(
     create: (context) => ProfileSalesCubit(GetSalesProfileRepository(GetSalesProfileWebService()))..getProfileSales(),
     child: ProfileSalesWidget(),
   );
  
  }
  
  
  bool get backButton => false;
  
  
  bool get isAppBar => false;
  
  @override
  String get title => '';
}

// Todo : rahan 1000 (eg)