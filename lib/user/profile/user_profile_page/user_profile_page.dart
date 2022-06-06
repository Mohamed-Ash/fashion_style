// ignore_for_file: prefer_const_constructors

import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/user/menu/drawer_page/drawer_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserProfilePage extends PageLayoutInterface {
  UserProfilePage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get buildAppBar => AppBar(
    title: Text('fashion style'),
    elevation: 0,
  );
  
  @override
  Widget? get buildDrawer =>  DrawerPage();

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
            color: ColorsTheme.primary,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(  
                MediaQuery.of(context).size.width, 120.0,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 55),
              child: Center(
                child: Container( 
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: ColorsTheme.backgaroundPage,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      scale: 10 ,
                      fit: BoxFit.none,
                      // fit: BoxFit.fitWidth,
                      // image: NetworkImage(
                      //   url,
                      // ),
                      alignment: Alignment.center,
                      // opacity: 52,
                      image: AssetImage('assets/images/userrr.png',)
                    ) ,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}