// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/core/theme/fonts/style.dart';
import 'package:flutter/material.dart';

class SalesPage extends StatelessWidget {
  static const   String urlImage = 'https://image.shutterstock.com/image-photo/time-go-full-length-handsome-600w-757863334.jpg';
  const SalesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemBuilder: ((context, index) => salesWidget(context)), 
      separatorBuilder:((context, index) => Divider()), 
      itemCount: 10
    );
  }

  Widget salesWidget(context){
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context,testpage);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 120,
          color: ColorsTheme.wight,
          child: Row(
            children: [
              CircleAvatar(
                maxRadius: 40,
                minRadius: 40,
                backgroundImage: NetworkImage(urlImage) 
              ),
            ],
          ),
        ),
      )
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


          ListTile(
        title: Text(
          'Mohamed Ashraf',
          style: getBoldStyle(color: Colors.black),
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
          style:  getLightStyle(color: ColorsTheme.gray,),
        ),
        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        // minVerticalPadding: 1.5,
        // horizontalTitleGap: 2,
        // dense: true,
        tileColor: ColorsTheme.salseColor,
        isThreeLine: true,  
        // minLeadingWidth: 2,
        enabled: true,
        leading: CircleAvatar(
          maxRadius: 50,
          minRadius: 50,
          backgroundImage: NetworkImage(urlImage) 
        ),
      ),
        ) */