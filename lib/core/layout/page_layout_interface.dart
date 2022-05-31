// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:fashion_style/core/bloc/cubit/api_data_bloc_cubit.dart';
import 'package:fashion_style/core/layout/salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:fashion_style/core/layout/salomon_bottom_bar/salomon_bottom_bar_item.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/user/menu/drawer_page/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageLayoutInterface extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKye = GlobalKey();

  PageLayoutInterface({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiDataBloc(),
      child: BlocBuilder<ApiDataBloc, ApiDataBlocState>(
        builder: (context, state) {
          ApiDataBloc blocLayout = ApiDataBloc.get(context);
          return Scaffold(
            key: scaffoldKye,
            drawer: DrawerPage(),
            body: blocLayout.screens[blocLayout.currentIndex],
            appBar: AppBar(
              title: Text('fashion style'),
            ),
            bottomNavigationBar: SalomonBottomBar(
              selectedColorOpacity: 0.0,
              currentIndex: blocLayout.currentIndex,
              selectedItemColor: ColorsTheme.green,
              unselectedItemColor: ColorsTheme.iconUnselect,
              onTap: (index) {
                blocLayout.changeIndex(index);
              },
              items: [
                SalomonBottomBarItem(
                  icon: Icon(Icons.home), title: Text('clothes')),
                SalomonBottomBarItem(
                  icon: Icon(Icons.store_sharp), title: Text('shoes')),
                SalomonBottomBarItem(
                  icon: Icon(Icons.people_alt_outlined), title: Text('sales'))
              ],
            ),
            /*  bottomNavigationBar: BottomNavigationBar(
                currentIndex: blocLauout.currentIndex,
                unselectedItemColor: Color.fromARGB(255, 146, 227, 169),
                selectedItemColor: Color.fromARGB(255, 3, 83, 4),
                onTap: (index){
                  blocLauout.changeIndex(index);
                },
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.store_sharp),label: 'Market'),
                  BottomNavigationBarItem(icon: Icon(Icons.discount),label: 'Discount'),
                ],
              ), */
          );
        },
      ),
    );
  }
}
