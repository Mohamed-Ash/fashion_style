// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreateProfilePage extends PageLayoutInterface {
  String? token;
  String? userId;

  final nameController = TextEditingController();
  final phonecontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  static const String url = 'https://images.unsplash.com/photo-1613915617430-8ab0fd7c6baf?ixlib=rb-1.2.1&raw_url=true&q=60&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500';

  CreateProfilePage({Key? key}) : super(key: key);
  
  @override
  Widget buildBody(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name:'),
                DefaulteFormField.field(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  validate: ( value) => value!.isEmpty ? 'please enter you name' : null ,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Phone:'),
                SizedBox(
                  height: 2.5,  
                ),
                DefaulteFormField.field(
                  controller: phonecontroller,
                  keyboardType: TextInputType.phone,
                  validate:  (value){
                    if(value!.isEmpty|| value.length < 11 && value.length > 11 ){
                      return 'Please enter  your phone' ;
                    }
                    return null ;
                  }
                ),
                SizedBox(
                  height: 20,
                ),
                DefaulteFormField.container(
                  child: GestureDetector(
                    child : Center(child: Text('Continue')),
                    onTap: () {
                      if(formKey.currentState!.validate()){
                        confirmEmail(context);
                      }
                    },
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Future confirmEmail(context)async{
    try{
      Response response = await Dio().post(
        'http://jack07-001-site1.htempurl.com/api/Accounts/confirmemail',
        data: {
          "token": "string",
          "userId": "string"
        },
      ); 
      
      if (response.statusCode == 200) {
        Navigator.pushNamed(context, appPage);
      }
    }catch(e){
      print(e.toString());
    }
  }
  PreferredSizeWidget? get apBar =>AppBar(
    leading: Container(),
    title: Text('fashion style'),
    elevation: 0,
  );
  
  bool get backButton => false;
}