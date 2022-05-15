// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fashion_style/user/carousel_slider/carousel_slider_page.dart';
import 'package:fashion_style/user/carousel_slider/test_image_page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => TestImagePage(),
              ),
            );
          },
          child: CarouselSliderPage(),
        )
      ],
    );
  }

}

