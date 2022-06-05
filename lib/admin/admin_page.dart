// ignore_for_file: avoid_unnecessary_containers

import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdminPage extends PageLayoutInterface{
  AdminPage({Key? key}) : super(key: key);



  @override
  Widget buildBody(BuildContext context) {
    return SafeArea(
      left: true,
        right: true,
      minimum: const EdgeInsets.all(50),
      child: Column(
        children: [
          Container(
            child: TextButton(
              onPressed: (){}, 
              child: const Text('Order')
            ),
          ),
          Container(
            child: TextButton(
              onPressed: (){}, 
              child: const Text('Sales')
            ),
          ),
          Container(
            child: TextButton(
              onPressed: (){}, 
              child: const Text('Offers')
            ),
          ),
          Container(
            child: TextButton(
              onPressed: (){}, 
              child: const Text('product')
            ),
          ),
          Container(
            child: TextButton(
              onPressed: (){}, 
              child: const Text('user nmber')
            ),
          ),
        ],
      ) ,
    );
  }
}