// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderPage extends StatelessWidget {
  const CarouselSliderPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          // initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items:[ 
            Container(
              width: 300, 
              margin: EdgeInsets.symmetric(horizontal: 2.5),
              child: Image(
                image: NetworkImage('https://image.shutterstock.com/image-photo/beautiful-brunette-woman-natural-makeup-600w-1781009285.jpg')
              ),
            ),
            Container(
              width: 300, 
              margin: EdgeInsets.symmetric(horizontal: 2.5),
              child: Image(
                image: NetworkImage('https://image.shutterstock.com/image-photo/thoughtful-young-man-drinking-coffee-600w-2006098031.jpg')
              ),
            ),
            InteractiveViewer(
              // constrained: false,
              //  scaleEnabled: false,
              child: Container(
                width: 300, 
                margin: EdgeInsets.symmetric(horizontal: 2.5),
                child: Image(
                  image: NetworkImage('https://image.shutterstock.com/image-photo/time-go-full-length-handsome-600w-757863334.jpg')
                ),
              ),
            ),
            Container(
            width: 300, 
            margin: EdgeInsets.symmetric(horizontal: 2.5),
            child: Image(
              image: NetworkImage('https://image.shutterstock.com/image-photo/thoughtful-young-man-drinking-coffee-600w-2006098031.jpg')
            ),
          ),
          Container(
            width: 300, 
            margin: EdgeInsets.symmetric(horizontal: 2.5),
            child: Image(
              image: NetworkImage('https://image.shutterstock.com/image-photo/fashion-model-sunglasses-beautiful-young-600w-397813951.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

//  search on this widget: Ink.image

 /* https://www.byrdie.com/thmb/ans01P9VgGryosDJVn5Auc4wwz8=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/fashionbloggersprimary-2210aaad71a0454a899fa4345bef529f.jpg
  https://image.shutterstock.com/image-photo/beauty-fashion-brunette-model-girl-600w-604255508.jpg
  https://image.shutterstock.com/image-photo/indoor-portrait-young-beautiful-fashionable-600w-502984240.jpg
  https://image.shutterstock.com/image-photo/time-go-full-length-handsome-600w-757863334.jpg */



         /* [ 1, 2, 3, 4,].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Center(
                child: Container(
                 width: 300, 
                 margin: EdgeInsets.symmetric(horizontal: 2.5),
                  // decoration: BoxDecoration(
                  //   color: Colors.amber
                  // ),
                  child: Image(
                    image: NetworkImage('https://www.byrdie.com/thmb/ans01P9VgGryosDJVn5Auc4wwz8=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/fashionbloggersprimary-2210aaad71a0454a899fa4345bef529f.jpg')
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    ); */