// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:fashion_style/core/bloc/cubit/api_data_bloc_cubit.dart';
import 'package:fashion_style/core/layout/salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:fashion_style/core/layout/salomon_bottom_bar/salomon_bottom_bar_item.dart';
import 'package:fashion_style/user/menu/drawer_page/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class PageLayoutInterface extends StatelessWidget{
  final GlobalKey<ScaffoldState> scaffoldKye = GlobalKey();

  PageLayoutInterface({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiDataBloc(),
      child:  BlocBuilder<ApiDataBloc, ApiDataBlocState>(
        builder: (context, state) {
          ApiDataBloc blocLauout = ApiDataBloc.get(context);
          return Scaffold(
              key: scaffoldKye,
              backgroundColor: Color.fromARGB(255, 218, 218, 218),
              drawer: DrawerPage(),
              body: blocLauout.screens[blocLauout.currentIndex],
              appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 146, 227, 169),
                title: Text(
                  'dolly fashion eg'
                ),
                bottomOpacity: 80,
              ),
              bottomNavigationBar: SalomonBottomBar(
                selectedColorOpacity: 0.0,
                currentIndex: blocLauout.currentIndex,
                selectedItemColor: Color.fromARGB(255, 3, 83, 4), 
                unselectedItemColor: Color.fromARGB(255, 146, 227, 169),
                onTap: (index){
                  blocLauout.changeIndex(index);
                },
                items: [
                  SalomonBottomBarItem(icon: Icon(Icons.home),title: Text('Home')),
                  SalomonBottomBarItem(icon: Icon(Icons.store_sharp),title: Text('offers')),
                  SalomonBottomBarItem(icon: Icon(Icons.discount), title: Text('sales'))
                ]
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