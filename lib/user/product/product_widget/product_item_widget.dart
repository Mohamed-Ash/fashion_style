// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fashion_style/core/data/model/get_product.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/fonts/style.dart';
import 'package:flutter/material.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';

class ProductItemWidget extends StatefulWidget {
  final ProductModel productModel;

  const ProductItemWidget({Key? key, required this.productModel}) : super(key: key);

  @override
  State<ProductItemWidget> createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  bool select2 = false;

  IconData iconselect2 = Icons.favorite;

  IconData iconUnSelect2 = Icons.favorite_outline_sharp;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, testpage);
      },
      child: Stack(
        children: [
          Container(
            width: 175,
            height: 275,
            decoration: BoxDecoration(
              color: ColorsTheme.wight,
              borderRadius: BorderRadius.circular(8),
            ),
            // alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 220,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorsTheme.black,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1613915617430-8ab0fd7c6baf?ixlib=rb-1.2.1&raw_url=true&q=60&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500'
                            //'${productModel.imagePath}'
                            // 'https://media.istockphoto.com/photos/image-of-brunette-in-fake-fur-coat-with-hood-picture-id535313567?k=20&m=535313567&s=612x612&w=0&h=xU51bRMrO0IV_uhBeys4orEUjktUbwzJVszpNgikKOY='
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: double.infinity,
                      color: Colors.black38,
                      child: Center(
                        child: Text(
                          '${widget.productModel.name}',
                          style: getBoldStyle(color: ColorsTheme.wight),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text(
                        '${widget.productModel.description}',
                        style: getSemiBoldStyle(color: ColorsTheme.gray),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${widget.productModel.price} \$',
                          style: getRegulerStyle(color: ColorsTheme.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            height: 40,
            right: 20,
            child: IconButton(
              icon: Icon(
                select2 ? iconselect2: iconUnSelect2
              ),
              onPressed: () {
                setState(() {
                  select2 = !select2 ;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}





 /* const SizedBox(
            height: 10,
          ), */
         /*  Image(
            height: 200,
            width: double.infinity,
            color: ColorsTheme.black,
            image: NetworkImage(
              // 'https://images.unsplash.com/photo-1613915617430-8ab0fd7c6baf?ixlib=rb-1.2.1&raw_url=true&q=60&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500'
              'https://media.istockphoto.com/photos/image-of-brunette-in-fake-fur-coat-with-hood-picture-id535313567?k=20&m=535313567&s=612x612&w=0&h=xU51bRMrO0IV_uhBeys4orEUjktUbwzJVszpNgikKOY='
            ),
          ), */