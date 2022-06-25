import 'package:fashion_style/core/data/model/get_product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PreviewProductWidget extends StatelessWidget {
  ProductModel? productModel;
  
  PreviewProductWidget({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${productModel!.name}'),
        const SizedBox(height: 10,),
        Text('${productModel!.description}'),
        const SizedBox(height: 10,),
        Text('${productModel!.insertedon}'),
        const SizedBox(height: 10,),
        Text('${productModel!.price}'),
        const SizedBox(height: 10,),
        Text('${productModel!.id}'),
      ],
    );
  }
}