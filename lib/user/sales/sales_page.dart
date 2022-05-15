// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:fashion_style/user/carousel_slider/test_image_page.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatelessWidget {
  static const   String urlImage = 'https://image.shutterstock.com/image-photo/time-go-full-length-handsome-600w-757863334.jpg';
  const MarketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: ((context, index) => salesWidget(context)), 
        separatorBuilder:((context, index) => Divider()), 
        itemCount: 10
      ),
    );
  }
  Widget salesWidget(context){
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) => TestImagePage())));
      },
      child: ListTile(
        title: Text(
          'Mohamed Ashraf',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          'Senior sales professional with over 25 years'
          'of experience providing assistance in office'
          'and storefront environments primarily within'
          'retail and electronics industries looking for new strategies to',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        minVerticalPadding: 1.5,
        horizontalTitleGap: 2,
        dense: true,
        tileColor: Color.fromARGB(255, 236, 235, 235),
        isThreeLine: true,  
        minLeadingWidth: 5,

        leading: CircleAvatar(
          // radius: 5,
          backgroundImage: NetworkImage(urlImage) 
        ),
      ),
    );
  }
}

  /* leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:DecorationImage( image: NetworkImage(urlImage)),
          ),
        ) */