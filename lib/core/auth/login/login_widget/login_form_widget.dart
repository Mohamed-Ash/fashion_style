// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_print, curly_braces_in_flow_control_structures, must_be_immutable, overridden_fields, prefer_const_constructors_in_immutables, unnecessary_null_comparison, deprecated_member_use

import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginFormWidgt extends StatefulWidget {
  
  LoginFormWidgt({Key? key}) : super(key: key);

 

  @override
  State<LoginFormWidgt> createState() => _LoginFormWidgtState();
}

class _LoginFormWidgtState extends State<LoginFormWidgt> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final user = FirebaseAuth.instance.currentUser;
  final formkey = GlobalKey<FormState>(); 

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email:'),
          SizedBox(
            height: 2.5,
          ),
          DefaulteFormField.field(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            validate: (value){
              if(value!.isEmpty)
              {
                return 'Please Enter your Email';
              }else if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                return 'Please a valid Email';
              }
              return null;
            },
          ),
          SizedBox(
            height: 10,
          ),
          Text('Password:'),
          SizedBox(
            height: 2.5,
          ),
          DefaulteFormField.field(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscure: true,
            validate: (value) => value == null || value.length < 6 ? 'Password does  not match' : null,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              if(formkey.currentState!.validate()){
                FirebaseAuth.instance.authStateChanges().listen(
                  (User? user) {
                    if(user != null)
                    Navigator.pushNamedAndRemoveUntil(
                      context, 
                     '/layout',
                      (route) => true
                    );
                   }
                );
              } 
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
            onTap: (){
              print("successfully");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Registerpage(),
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
            onPressed: () {
              Navigator.pushNamed(context,layout);
            },
            child: Text(
              'Forget Pssword ?',
              style: TextStyle(
                color: Color.fromARGB(255, 146, 227, 169),
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
  /* SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? login = prefs.getBool("login");
    login == null ? 
    Navigator.pushNamedAndRemoveUntil(
      context, 
      '/',
      (route) => false
    ) :  */
}
// (value) => value == null || value.length < 6 ? 'Please a valid Email' : null,