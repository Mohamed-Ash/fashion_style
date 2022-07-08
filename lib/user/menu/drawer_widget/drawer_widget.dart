// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_null_comparison, unrelated_type_equality_checks, avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/auth/log_out.dart/log_out_page.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/service/auth_service.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        InkWell(
          hoverColor:Colors.transparent,
          splashColor:Colors.transparent,
          focusColor:Colors.transparent,
          highlightColor:Colors.transparent,
          onTap: (){},
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Icon( 
                Icons.person_outline_outlined,
                color: ColorsTheme.iconUnselect,
              ),
              SizedBox(  width: 50),
              Text('Profile'),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
         const Divider(
          height: 1.5,
        ),
        SizedBox(
          height: 15,
        ),
        InkWell(
          hoverColor:Colors.transparent,
          splashColor:Colors.transparent,
          focusColor:Colors.transparent,
          highlightColor:Colors.transparent,
          onTap: (){
            Navigator.pushNamed(context, favorite);
          },
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Icon(
                Icons.favorite_border,
                color:  ColorsTheme.iconUnselect,
              ),
              SizedBox(  width: 50),
              Text('favorite'),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
         const Divider(
          height: 1.5,
        ),
        SizedBox(
          height: 15,
        ),
         InkWell(
          hoverColor:Colors.transparent,
          splashColor:Colors.transparent,
          focusColor:Colors.transparent,
          highlightColor:Colors.transparent,
          onTap: (){},
          child:  Flex(
            direction: Axis.horizontal,
            children: [
               InkWell(
                hoverColor:Colors.transparent,
                splashColor:Colors.transparent,
                focusColor:Colors.transparent,
                highlightColor:Colors.transparent,
                onTap: (){},
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    TextButton.icon(
                      label: Text('settings'),
                      icon: Icon(
                        Icons.people_alt_outlined,
                        color: Color.fromARGB(255, 146, 227, 169),
                      ), 
                      onPressed: () => Navigator.pushNamed(context, setting),
                      clipBehavior: Clip.antiAlias,
                    ),
                  ],
                ),
              ),  
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        const Divider(
          height: 1.5,
        ),
       /*  SizedBox(
          height: 15,
        ),
         InkWell(
          hoverColor:Colors.transparent,
          splashColor:Colors.transparent,
          focusColor:Colors.transparent,
          highlightColor:Colors.transparent,
          onTap: (){},
          child: Flex(
            direction: Axis.horizontal,
            children: [
              TextButton.icon(
                label: Text('profile'),
                icon: Icon(
                  Icons.people_alt_outlined,
                  color: Color.fromARGB(255, 146, 227, 169),
                ), 
                onPressed: () => Navigator.pushNamed(context, userProfilePage, arguments: AuthService().id),
                clipBehavior: Clip.antiAlias,
              ),
            ], //profile
          ),
        ),   */
        SizedBox(
          height: 15,
        ),
        const Divider(
          color: Color.fromARGB(255, 104, 196, 107),
          height: 1.5,
        ),
        SizedBox(
          height: 15,
        ),
       // if(userCredential == "0MY3kAtFYaezb8TI4lKaJXArOeE3")
        InkWell(
          hoverColor:Colors.transparent,
          splashColor:Colors.transparent,
          focusColor:Colors.transparent,
          highlightColor:Colors.transparent,
          onTap: (){
            Navigator.pushNamed(context, adminDashboard);
          },
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Icon(
                Icons.admin_panel_settings_rounded,
                color: Color.fromARGB(255, 146, 227, 169),
              ),
              SizedBox(  width: 50),
              Text('admin'),
            ],
          ),
        ),
        InkWell(
          hoverColor:Colors.transparent,
          splashColor:Colors.transparent,
          focusColor:Colors.transparent,
          highlightColor:Colors.transparent,
          onTap: ()async{
            LogOutPage().logOut(context);
          },
          child: Flex(
            direction: Axis.horizontal,
            children: [ 
              Icon(
                Icons.logout,
                color: Color.fromARGB(255, 146, 227, 169),
              ),
            ], //profile
          ),
        ),  
      ],
    );
  }
}

