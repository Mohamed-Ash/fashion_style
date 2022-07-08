// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:fashion_style/core/data/model/get_product.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/sql/sql.dart';
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
  bool select = false;
  String urlImage = 'https://images.unsplash.com/photo-1613915617430-8ab0fd7c6baf?ixlib=rb-1.2.1&raw_url=true&q=60&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500';
  IconData iconselect2 = Icons.favorite;
  IconData iconUnSelect2 = Icons.favorite_outline_sharp;
  Icon icon = Icon(Icons.favorite, color: Colors.red,);
  Icon uniIcon = Icon(Icons.favorite_outline_sharp, color: Colors.red,);

 CreatSQl createSQl = CreatSQl();
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()async{
        await Navigator.pushNamed(context, previewProduct, arguments: widget.productModel );
      },
      child: Center(
        child: Stack(
          children: [
            Container(
              width: 160,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
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
                          width: 160,
                          height: 180,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(8),
                           color: ColorsTheme.black,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              urlImage
                              // '${widg1et.productModel.imagePath}'
                              // 'https://media.istockphoto.com/photos/image-of-brunette-in-fake-fur-coat-with-hood-picture-id535313567?k=20&m=535313567&s=612x612&w=0&h=xU51bRMrO0IV_uhBeys4orEUjktUbwzJVszpNgikKOY='
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: double.infinity,
                        decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            '${widget.productModel.name}',
                            style: getBoldStyle(color: ColorsTheme.wight),
                          ),
                        ),
                      ),
                    ],
                  ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(8, 3, 0, 0),
                     child: Text(
                      '${widget.productModel.description}',
                      style: getSemiBoldStyle(color: ColorsTheme.gray),
                    ),
                   ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 3, 0, 0),
                    child: Text(
                      '\$ ${widget.productModel.price}',
                        style: getRegulerStyle(color: ColorsTheme.black),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              height: 38,
              right: 10,
              child: IconButton(
                icon: Icon(
                  select ? iconselect2: iconUnSelect2
                ),
                color: Colors.red,
                onPressed: ()async {
                  setState((){
                    select = !select ;
                  });
                  if(select) {
                    int response = await createSQl.insertData('''
                      INSERT INTO 'product' (
                        'name','title','price','image') VALUES (
                          '${widget.productModel.name}',
                          '${widget.productModel.description}',
                          '${widget.productModel.price}',
                          '$urlImage')
                    ''');
                    print("==================== response ================");
                    print(response);
                  }else{
                   int response = await createSQl.deleteAllDatabase("DELETE FROM 'product' WHERE id = 'id' ");
                    print("==================== response ================");
                    print(response);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}