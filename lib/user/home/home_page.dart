
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, must_be_immutable, void_checks, unused_field

import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/user/carousel_slider/carousel_slider_page.dart';
import 'package:fashion_style/user/product/product_page/product_page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, testpage);
              },
              child: const CarouselSliderPage(),
            ),
            const SizedBox(
              height: 10,
            ),
            ProductPage(),
          ],
        ),
      ),
    );
  }



/*   Widget productItem(){
    return  Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorsTheme.wight,
            borderRadius: BorderRadius.circular(8)
          ),
          alignment: Alignment.topCenter,
          width: 235,
          height: 400,
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1629374029669-aab2f060553b?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZmFzaGlvbiUyMG1vZGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500'
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Zara')
            ],
          ),
        ),
        Positioned(
          right: 10,
          // top: 6,
          bottom: 45,
          // right: 6.5,
          child:
            IconButton(
            icon: Icon(
              select ? iconselect : iconUnSelect
            ),
            onPressed: () {
              setState(() {
                select = !select ;
              });
            },
          ),
        ),
      ],
    );
  } */
}