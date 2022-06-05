// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:fashion_style/user/menu/drawer_page/drawer_page.dart';
import 'package:flutter/material.dart';

abstract class PageLayoutInterface extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKye = GlobalKey();
  ScrollController? scrollController;
  
  PageLayoutInterface({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // todo : build new app bar without sliver
      appBar: buildAppBar,
      drawer: buildDrawer,
      body: buildBody(context),
    );
  }

  // Widget? buildDrawer() => DrawerPage();
  Widget? get  buildDrawer => null ;

  PreferredSizeWidget? get buildAppBar => AppBar();

  Widget buildBody(BuildContext context);
  
}
