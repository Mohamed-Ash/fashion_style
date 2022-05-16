// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, unrelated_type_equality_checks


import 'package:fashion_style/core/auth/login/login_form_page/login_page.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  final formkye = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final phonecontroller = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassword = TextEditingController();


  RegisterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkye ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email address:'),
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
            Text('phone:'),
          SizedBox(
            height: 2.5,  
          ),
          DefaulteFormField.Field(
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
          Text('Confirm  Password:'),
            SizedBox(
            height: 2.5,  
          ),
          DefaulteFormField.Field(
            controller: confirmpassword,
            obscure: true,
            keyboardType: TextInputType.visiblePassword,
            validate: (value){
              if(value == null){
                return 'Confirm Password';
              }else if(confirmpassword.text != passwordController.text){
                return 'Confirm Password does not match';
              } else if(value.length < 6){
                return 'Confirm Password does not match' ;
              }
              return null;
            }
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              if(formkye.currentState!.validate()){
                 Navigator.pushNamedAndRemoveUntil(
                  context, 
                  '/layout',
                  (route) => false
                );
              }
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
      ),
    );
  }
}