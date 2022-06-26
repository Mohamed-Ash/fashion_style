import 'package:fashion_style/core/data/model/get_product.dart';
import 'package:fashion_style/user/product/product_widget/preview_product_widget.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/material.dart';

class PreviewProductPage extends UserInterface {
  final ProductModel productModel;
  const PreviewProductPage({Key? key, required this.productModel}) : super(key: key);

  @override
  String get title => 'profile product';
  
  @override
  Widget buildBody(BuildContext context) {
    return PreviewProductWidget(productModel: productModel,);
  }
  
}