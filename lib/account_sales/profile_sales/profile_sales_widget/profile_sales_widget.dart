import 'package:fashion_style/account_sales/profile_sales/profile_sales_widget/item_profile_sales_widget.dart';
import 'package:fashion_style/core/bloc/profile_sales_cubit/profile_sales_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileSalesWidget extends StatelessWidget {
  const ProfileSalesWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSalesCubit, ProfileSalesState>(
      builder: (context, state) {
        if(state is ProfileSalesLoadedState) {
          //  userModel = (state).users; 
           return ItemProfileSalesWidget(getSalesModel: state.salesModel[1]);
          // return   ShowProfileWidget(userModel: state.users.first,); //userModel : state.users[2]
        } else if(state is ProfileSalesLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('error'));
        }
      },
    );
  }
}