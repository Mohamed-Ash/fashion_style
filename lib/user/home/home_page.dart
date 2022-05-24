
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, must_be_immutable, void_checks, unused_field

import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/user/carousel_slider/carousel_slider_page.dart';
import 'package:fashion_style/user/carousel_slider/test_image_page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

   const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool select = false ;
  IconData iconselect = Icons.favorite;
  IconData iconUnSelect = Icons.favorite_outline_sharp;

  bool select2 = false ;
  IconData iconselect2 = Icons.favorite;
  IconData iconUnSelect2 = Icons.favorite_outline_sharp;

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView( 
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => const TestImagePage(),
                  ),
                );
              },
              child: const CarouselSliderPage(),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   productItem(),
                    const SizedBox(
                      width: 10,
                    ),
                    productItem(),
                    
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
                ),
                const SizedBox(
                      height: 10,
                    ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    productItemTest(),
                    const SizedBox(
                      width: 10,
                    ),
                    productItemTest()
                  ],
                ),
              ],
            ),
             const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
  Widget productItem(){
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
  }
   Widget productItemTest(){
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
                  'https://media.istockphoto.com/photos/image-of-brunette-in-fake-fur-coat-with-hood-picture-id535313567?k=20&m=535313567&s=612x612&w=0&h=xU51bRMrO0IV_uhBeys4orEUjktUbwzJVszpNgikKOY='
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
    );
  }
}