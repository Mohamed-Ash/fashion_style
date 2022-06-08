// ignore_for_file: avoid_unnecessary_containers

import 'package:fashion_style/core/router/string_route.dart';
import 'package:flutter/material.dart';

class AdminDrawer extends  StatelessWidget {
  const AdminDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding:  const EdgeInsets.fromLTRB(8, 16, 8, 0),
        child: Column(
          children:  [
            Container(
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, adminAllOrders);
                }, 
                child: const Text('Orders')
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, adminSalesNumber);
                }, 
                child: const Text('Sales number')
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, adminReels);
                }, 
                child: const Text('Reels')
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, activeSales);
                }, 
                child: const Text('active Sales')
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){ 
                  Navigator.pushNamed(context, adminSalesProduct);
                }, 
                child: const Text('product')
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, adminUserNumber);
                }, 
                child: const Text('user number')
              ),
            ),
            Container(
              child: TextButton(
                child: const Text('log out'),
                onPressed: (){
                  Navigator.pushNamed(context, appLayoutPage);
                }, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}