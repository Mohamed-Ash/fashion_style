// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';

class AppBarPage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPage({ Key? key,}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      title: Text('fashion style'),
      actions: [
        IconButton(
          onPressed: (){
            Navigator.pushNamed(context, testpage);
          }, 
          icon: Icon(Icons.notifications_none),
        ),
      ],
      bottom: PreferredSize(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.pushNamed(context, search);
            },
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 20, 0),
                    child: Icon(
                      Icons.search,
                      color: ColorsTheme.gray
                    ),
                  ),
                  Text(
                    'Do you need something !',
                    style: TextStyle(
                      color: ColorsTheme.gray
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(50)
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
  // @override
  // Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


/*    title: Text('fashion style'),
              actions: [
                IconButton(
                  onPressed: (){
                    Navigator.pushNamed(context, testpage);
                  }, 
                  icon: Icon(Icons.notifications_none),
                ),
              ],
              toolbarHeight: 66,
             bottom: PreferredSize(
              child: Container(
                decoration: BoxDecoration(
                  border: 
                ),
                height: 20.0,
              ),
              preferredSize: Size.fromHeight(4.0)),
            ), */