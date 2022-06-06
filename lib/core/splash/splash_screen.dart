import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SplashScreen extends PageLayoutInterface{
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: const[],
    ) ;
  }

}