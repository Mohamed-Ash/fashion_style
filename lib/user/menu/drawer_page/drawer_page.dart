// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fashion_style/user/menu/drawer_widget/drawer_widget.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,
      minimum: const EdgeInsets.fromLTRB(0, 0, 70, 0),
      maintainBottomViewPadding: true,
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 160,
                  ), 
                  const CircleAvatar(
                    radius: 45, 
                    backgroundImage: NetworkImage('https://image.shutterstock.com/image-photo/time-go-full-length-handsome-600w-757863334.jpg')
                  ),
                ],
              ),
              const SizedBox(
              // height: 5,  
              ),
              const Divider(
                height: 1.5,
              ),
              DrawerWidget(),
            ],
          ),
        ),
      ),  
    );
  }
/*   Widget darwerWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(  Icons.people_alt_outlined),
        const SizedBox(  width: 50),
        const Text('Profile'),
      ],
    );
  } */
}