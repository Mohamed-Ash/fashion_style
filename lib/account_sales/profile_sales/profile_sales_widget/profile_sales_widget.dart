/* // ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fashion_style/core/data/model/get_sales_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fashion_style/account_sales/profile_sales/profile_sales_widget/item_profile_sales_widget.dart';
import 'package:fashion_style/core/bloc/profile_sales_cubit/profile_sales_cubit.dart';

// ignore: must_be_immutable
class ProfileSalesWidget extends StatelessWidget {
  GetSalesModel? getSalesModel;

  ProfileSalesWidget({Key? key,}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSalesCubit,ProfileSalesState>(
      builder:  (context,state){
         if(state is ProfileSalesLoadedState) {
          //  userModel = (state).users; 
           return  ItemProfileSalesWidget(getSalesModel: state.salesModel[0]);
        } else if(state is ProfileSalesLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('error'));
        }
      },
    );
  }
}
 */