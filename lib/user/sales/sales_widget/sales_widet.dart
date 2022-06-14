// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fashion_style/core/bloc/cubit/sales_cubit_cubit.dart';
import 'package:fashion_style/core/data/model/all_sales_model.dart';
import 'package:fashion_style/user/sales/sales_widget/item_sales_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class SalesWidget extends StatelessWidget {
  const SalesWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SalesCubit, SalesCubitState>(
      builder: (context, state) {
        // ignore: avoid_print
        print(state.toString());
        if(state is SalesLoadedState) {
          return ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (
              (context, index) => ItemSalesWidget(
                allSalesModel: state.sales[index],)
              ), 
            separatorBuilder:((context, index) => const SizedBox()), 
            itemCount: state.sales.length, 
          );
        } else if(state is SalesLodingState) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('error'));
        }
      },
    );
  }
}
