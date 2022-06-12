// ignore_for_file: must_be_immutable, sized_box_for_whitespace, prefer_const_constructors, avoid_print, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:fashion_style/core/auth/login/login_widget/login_form_widget.dart';
import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

class LoginPage extends PageLayoutInterface{
  LoginPage({Key? key}) : super(key: key);
  
  @override
  bool get backButton => false;

  @override
  Widget buildBody(BuildContext context) {
    return LoginFormWidgt();
     /* Expanded(
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
           
            LoginFormWidgt(),
          ],
        ),
      ),
    ); */
  }
  
}