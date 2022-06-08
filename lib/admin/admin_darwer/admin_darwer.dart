// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class AdminDrawer extends  StatelessWidget {
  const AdminDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding:  const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Column(
            children:  [
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
        ),
      ),
    );
  }
}