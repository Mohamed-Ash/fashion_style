import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SplashScreen extends PageLayoutInterface{
  SplashScreen({Key? key}) : super(key: key);
  int? timer;
  
  bool get backButton => true;
  
  @override
  Widget buildBody(BuildContext context) {
    return PageView(
      
      scrollDirection: Axis.horizontal,
      children: const[],
    ) ;
  }

}
// todo: make onboarding screen on the main name of class