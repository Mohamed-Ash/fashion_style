// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_null_comparison

import 'package:fashion_style/core/router/string_route.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      /* ListTile(
        onLongPress: (){},
        leading: Icon(  Icons.people_alt_outlined),
        trailing: Text('Profile'),
        ), */
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
                color: Color.fromARGB(255, 146, 227, 169),
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
          color: Color.fromARGB(255, 104, 196, 107),
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
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Icon(
                Icons.favorite_border,
                color: Color.fromARGB(255, 146, 227, 169),
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
          color: Color.fromARGB(255, 104, 196, 107),
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
              Icon(
                Icons.settings_outlined,
                color: Color.fromARGB(255, 146, 227, 169),
                
              ),
              SizedBox(  width: 50),
              Text('settings'),
            ],
          ),
        ),
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
                Icons.people_alt_outlined,
                color: Color.fromARGB(255, 146, 227, 169),
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
            color: Color.fromARGB(255, 104, 196, 107),
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
              Navigator.pushNamed(context, admin);
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
          
      ],
    );
  }
}

