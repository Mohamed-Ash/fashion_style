// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final nameController = TextEditingController();
  final phonecontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  '',
                ),
                radius: 50,
              ),
              SizedBox(
                height: 10,
              ),
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
                  if(value  == null){
                    return 'Please enter  your phone' ;
                  }else if(value.length < 11){
                    return 'Please enter  your phone' ;
                  }else if(value.length > 11){
                    return 'Please enter  your phone' ;
                  }
                  return null ;
                }
              ),
              SizedBox(
                height: 10,
              ),
              DefaulteFormField.container(
                child: GestureDetector(
                  onTap: () {
                    if(formKey.currentState!.validate()){
                      Navigator.pushNamed(context, layout);
                    }
                  },
                  child: Text('Continue'),
                )
                 
              ),
            ],
          ),
        ),
      ),
    );
  }
}