// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/core/theme/fonts/style.dart';
import 'package:flutter/material.dart';

class SalesWidget extends StatelessWidget {
  static const   String urlImage = 'https://image.shutterstock.com/image-photo/time-go-full-length-handsome-600w-757863334.jpg';

  const SalesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context,testpage);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: ColorsTheme.wight,
            borderRadius: BorderRadius.circular(8)
          ),
          width: double.infinity,
          height: 100,
          child: Container(
            padding:  EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  maxRadius: 45,
                  minRadius: 45,
                  backgroundImage: NetworkImage(urlImage) 
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mohamed Ashraf',
                        style: getBoldStyle(color: ColorsTheme.black),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Senior sales professional with over 25 years'
                        'of experience providing assistance in office'
                        'and storefront environments primarily within'
                        'retail and electronics industries looking for new strategies to',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:  getRegulerStyle(color: ColorsTheme.gray,),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
