// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fashion_style/core/bloc/product_cubit/product_cubit.dart';
import 'package:fashion_style/core/data/model/get_product.dart';
import 'package:fashion_style/core/data/repository/get_product_repository.dart';
import 'package:fashion_style/core/data/web_service/product_web_service.dart';
import 'package:fashion_style/user/product/product_widget/product_item_widget.dart';
import 'package:fashion_style/user/product/product_widget/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ProductPage extends StatelessWidget {
  

  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>ProductCubit(GetProductRepository(ProductWebService()))..getAllProduct(),
      child: ProductWidget(),
    );
  }

  
}
























/* Column(
      children: [
        buildProduct(),
        const SizedBox(
          height: 20,
        ),
        buildProduct(),
          const SizedBox(
          height: 20,
        ),
        buildProduct(),
          const SizedBox(
          height: 20,
        ),
        buildProduct(),
      ],
    ); */