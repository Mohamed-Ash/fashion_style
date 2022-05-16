// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_print, curly_braces_in_flow_control_structures, must_be_immutable, overridden_fields, prefer_const_constructors_in_immutables, unnecessary_null_comparison, deprecated_member_use

import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/form_fields/form_field_borders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginFormWidgt extends StatefulWidget {

  LoginFormWidgt({Key? key}) : super(key: key);

 

  @override
  State<LoginFormWidgt> createState() => _LoginFormWidgtState();
}

class _LoginFormWidgtState extends State<LoginFormWidgt> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            validate: ( value){
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
          DefaulteFormField.Field(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscure: true,
            validate: (value){
              if(value == null){
                return 'Confirm Password';
              }else if(value.length < 6){
                return 'Confirm Password does  not match' ;
              }
              /* else if(passwordController.text != confirmpassword.text){
                return 'Confirm Pas sword does not match';
              } else if(value.length < 6){
                return 'Confirm Password does  not match' ;
              } */
              return null;
            }
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
      password: passwordController.text,
      email: emailController.text,
      context: context
    );
    if (user != null) {
      /* SharedPreferences prefs = await SharedPreferences.getInstance();
        bool? login = prefs.getBool('login');
        login != null ?  */
    /*   Navigator.pushNamedAndRemoveUntil(
        context, 
        '/layout' ,
        (route) => false
      ) :  */
      Navigator.pushNamedAndRemoveUntil(
        context, 
        '/login',
        (route) => false
      );
      print('Login');
      /* Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ,
        ),
      ); */

       /* SharedPreferences prefs = await SharedPreferences.getInstance();
                  bool? login = prefs.getBool("login");
                  login == null ? 
      Navigator.pushNamedAndRemoveUntil(
        context, 
        '/',
        (route) => false
      ) :  */
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
