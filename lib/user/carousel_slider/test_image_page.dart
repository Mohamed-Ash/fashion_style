// ignore_for_file: prefer_const_constructors

import 'package:fashion_style/core/theme/themes.dart';
import 'package:flutter/material.dart';

class TestImagePage extends StatelessWidget {
  const TestImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes().color(1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Coming Soon'),
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              icon: Icon(Icons.arrow_back_ios_new,),
            ),
          ],
        ),
      ),
    );
  }

}
