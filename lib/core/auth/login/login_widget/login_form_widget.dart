// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_print, curly_braces_in_flow_control_structures, must_be_immutable, overridden_fields, prefer_const_constructors_in_immutables, unnecessary_null_comparison, deprecated_member_use, unused_local_variable, body_might_complete_normally_nullable

import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginFormWidgt extends StatefulWidget {
  
  LoginFormWidgt({Key? key}) : super(key: key);

 

  @override
  State<LoginFormWidgt> createState() => _LoginFormWidgtState();
}

class _LoginFormWidgtState extends State<LoginFormWidgt> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                 child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 22
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
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
                onTap: ()async{
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                      bool? loginpage = prefs.getBool('loginpage');
                      login != null ? 
                    Navigator.pushNamedAndRemoveUntil(
                      context, 
                      '/app_page' ,
                      (route) => false
                    ) : 
                  Navigator.pushNamed(context, '/');
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
                  Navigator.pushNamed(context, appPage);
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
        ),
      ),
    );
    
  }
  
 /*  Future loginTap(context)async{
    User? user = await loginUseingEmailPassword(
      password: passwordController.text,
      email: emailController.text,
      context: context
    );
    if (user != null) {
      Navigator.pushNamed(context, layout);
      print('Login');
    } else {
      print('testtttttttt' + user.toString());
    }
  }   */
  
  /* static Future<User?> loginUseingEmailPassword() async {
    
     try {
        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: "asdasdasdasdas.allen@example.com",
          password: "SuperSecretPassword!"
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
  } */
}