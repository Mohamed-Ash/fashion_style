// ignore_for_file: non_constant_identifier_names, override_on_non_overriding_member, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class AdminInterface extends StatelessWidget {
  const AdminInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: true,
         right: true,
        minimum: const EdgeInsets.all(50),
        child: Column(
          children: [
            Container(
              child: TextButton(
                onPressed: (){}, 
                child: Text('Order')
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){}, 
                child: Text('Sales')
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){}, 
                child: Text('Offers')
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){}, 
                child: Text('product')
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){}, 
                child: Text('user nmber')
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}


