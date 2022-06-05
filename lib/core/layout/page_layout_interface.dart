// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

abstract class PageLayoutInterface extends StatelessWidget {
 bool? isAppBar ;
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

  PreferredSizeWidget? get buildAppBar => null;

  Widget buildBody(BuildContext context);
  
}
