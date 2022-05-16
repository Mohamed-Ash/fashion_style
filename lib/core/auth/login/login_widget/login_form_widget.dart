// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_print, curly_braces_in_flow_control_structures, must_be_immutable, overridden_fields, prefer_const_constructors_in_immutables, unnecessary_null_comparison, deprecated_member_use

import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/form_fields/form_field_borders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class LoginFormWidgt extends StatefulWidget {

  LoginFormWidgt({Key? key}) : super(key: key);

 

  @override
  State<LoginFormWidgt> createState() => _LoginFormWidgtState();
}

class _LoginFormWidgtState extends State<LoginFormWidgt> {
  final TextEditingController _emailEding = TextEditingController();
  final TextEditingController _passwordEding = TextEditingController();

  final formkey = GlobalKey<FormState>(); 
  final scaffoldkye =  GlobalKey<ScaffoldState>(); 
 
  final snackBar = SnackBar(content: Text('submitting form'));

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
          DefaulteFormField.Field(
             controller: _emailEding,
             keyboardType: TextInputType.emailAddress,
             validate: (value) => value == null || value.length <6 ? 'Please Enter your Email' :null,
          ),
          SizedBox(
            height: 10,
          ),
          Text('Password:'),
          SizedBox(
            height: 2.5,
          ),
           DefaulteFormField.Field(
            controller: _emailEding,
            obscure: true,
            keyboardType: TextInputType.visiblePassword,
            validate: (value) => value == null || value.length <6 ? 'Please Enter your Password' : null ,  
          ),
          
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              if(formkey.currentState!.validate()) {
                // scaffoldkye.currentState!.showSnackBar(snackBar);
                loginTap(context);
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
            onPressed: () {},
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

  Future loginTap(context)async{
    User? user = await loginUseingEmailPassword(
      password: _passwordEding.text,
      email: _emailEding.text,
      context: context
    );
    if (user != null) {
      print('Login');
      Navigator.pushNamedAndRemoveUntil(
        context, 
        '/layout',
        (route) => false
      );
      /* Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ,
        ),
      ); */
    } else {
      print('testtttttttt' + user.toString());
    }
  }  

  static Future<User?> loginUseingEmailPassword({
    required String password,
    required String email,
    required BuildContext context,
  }) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
  try {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password
    );
    user = userCredential.user;
  } on FirebaseAuthException catch (e) {
      if (e.code == 'use-not-found') print('No user found for that  email');
  }
    return user;
  }
}
