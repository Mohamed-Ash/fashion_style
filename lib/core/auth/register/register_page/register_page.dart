// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fashion_style/core/auth/register/register_widget/register_widget.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatelessWidget {
  const Registerpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 22
              ),
            ),
            SizedBox(
              height: 35,
            ),
            RegisterWidget(),
          ],
        ),
      ) ,
    );
  }
}