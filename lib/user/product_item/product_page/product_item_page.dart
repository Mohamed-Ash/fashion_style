
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fashion_style/user/product_item/product_widget/product_widget.dart';
import 'package:flutter/material.dart';




class ProductPage extends  StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

Widget buildProduct(){
  return Row(
    children: [
      ProductWidget(),
      const SizedBox(
        width: 10,
      ),
      ProductWidget(),
      /* Container(
        decoration: BoxDecoration(
          color: ColorsTheme.wight,
          borderRadius: BorderRadius.circular(8)
        ),
        alignment: Alignment.topCenter,
        width: 235,
        height: 400,
        padding: EdgeInsets.all(8),
        child: Image(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1613915617430-8ab0fd7c6baf?ixlib=rb-1.2.1&raw_url=true&q=60&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500'
          ),
        ),
      ), */
    ],
  );
}