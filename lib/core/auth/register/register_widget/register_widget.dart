// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print


import 'package:fashion_style/core/auth/login/login_form_page/login_page.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email address:'),
        SizedBox(
          height: 2.5,  
        ),
        DefaulteFormField.Field(
          keyboardType: TextInputType.emailAddress,
          onTap: (){},
        ),
        SizedBox(
          height: 10,
        ),
        Text('Password:'),
          SizedBox(
          height: 2.5,  
        ),
        DefaulteFormField.Field(
          keyboardType: TextInputType.emailAddress,
          onTap: (){},
        ),
        SizedBox(
          height: 10,
        ),
        Text('Confirm  Password:'),
          SizedBox(
          height: 2.5,  
        ),
         DefaulteFormField.Field(
          keyboardType: TextInputType.emailAddress,
          onTap: (){},
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            print('Login');
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
          height: 30,
        ),
        Row(
         // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Alredy Have an account ?',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
            TextButton(
              onPressed:(){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context)=> LoginPage(),
                  ),
                );
              },
              child: Text(
                'Login ',
                style: TextStyle(
                  color: Color.fromARGB(255, 146, 227, 169),
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}