// ignore_for_file: prefer_const_constructors

import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TestImagePage extends PageLayoutInterface {
  TestImagePage({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
    return Center(
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
    );
  }
  
  @override
  bool get backButton => true;
  
  @override
  // TODO: implement isAppBar
  bool get isAppBar => true;

}
