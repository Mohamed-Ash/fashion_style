// ignore_for_file: must_be_immutable, sized_box_for_whitespace, prefer_const_constructors, avoid_print, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:fashion_style/core/auth/login/login_widget/login_form_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 22
              ),
            ),
            SizedBox(
              height: 35,
            ),
            LoginFormWidgt(),
          ],
        ),
      ) ,
    );
  }
}