// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_print

import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

class LoginFormWidgt extends StatelessWidget {
  const LoginFormWidgt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email:'),
        SizedBox(
          height: 2.5,
        ),
        DefaulteFormField.Field(
          keyboardType: TextInputType.emailAddress,
          onTap:(){} 
        ),
        SizedBox(
          height: 10,
        ),
        Text('Password:'),
        SizedBox(
          height: 2.5,
        ),
        DefaulteFormField.Field(
          onTap:(){} 
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            print('Login');
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=> PageLayoutInterface(),
              ),
            ); 
          },
          child: DefaulteFormField.container(
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            print('Sign UP ');
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=> Registerpage(),
              ),
            );         
          },
          child: DefaulteFormField.container(
            child: Center(  
              child: Text(
                'Sign UP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),   
        SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed:(){},
          // ignore: prefer_const_constructors
          child: Text(
            'Forget Pssword ?',
            
            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Color.fromARGB(255, 146, 227, 169),
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}