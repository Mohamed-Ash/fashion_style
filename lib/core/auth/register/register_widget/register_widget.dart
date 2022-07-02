// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, unrelated_type_equality_checks, unused_local_variable, prefer_const_constructors_in_immutables

import 'package:dio/dio.dart';
import 'package:fashion_style/core/auth/login/login_form_page/login_page.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {

  RegisterWidget({Key? key}) : super(key: key);

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  
  final formkye = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final phonecontroller = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassword = TextEditingController();
 


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmpassword.dispose();
    phonecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkye ,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 22
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text('Email address:'),
              SizedBox(
                height: 2.5,  
              ),
              DefaulteFormField.field(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validate: ( value){
                  if(value!.isEmpty)
                  {
                    return 'Please Enter your Email';
                  }else if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                    return 'Please a valid Email';
                  }else if(value.hashCode == 'email-already-in-use'){
                    return 'The account already exists for that email.';
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
                validate: (value){
                  if(value == null){
                    return 'Confirm Password';
                  }else if(value.length < 6){
                    return 'Confirm Password does  not match' ;
                  }
                  else if(passwordController.text != confirmpassword.text){
                    return 'Confirm Pas sword does not match';
                  } else if(value.length < 6){
                    return 'Confirm Password does  not match' ;
                  }
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
              DefaulteFormField.field(
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
             
              DefaulteFormField.field(
                controller: phonecontroller,
                keyboardType: TextInputType.phone,
                obscure: true,
                validate: (value){
                  if(value == null){
                    return 'Confirm Password';
                  }else if(value.length < 6){
                    return 'Confirm Password does  not match' ;
                  }
                  else if(passwordController.text != confirmpassword.text){
                    return 'Confirm Pas sword does not match';
                  } else if(value.length < 6){
                    return 'Confirm Password does  not match' ;
                  }
                  return null;
                }
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: ()async{
                  registerWidget();
                  /* if(formkye.currentState!.validate()){
                    Navigator.pushNamed(context, craeteUserProfile);
                  } */
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
                      color: ColorsTheme.gray,
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
        ),
      ),
    );
  }

  Future registerWidget()async{
    try{
      Response response = await Dio().post(
        'http://jack07-001-site1.htempurl.com/api/Accounts/Rigester',
        data: {
          "email": emailController.text,
          "password": passwordController.text,
          "confirmPassword": confirmpassword.text,
          "phoneNumber": phonecontroller.text,
        },    
      );
      if (response.statusCode == 200) {
        Navigator.pushNamed(context, craeteUserProfile);
          print('test masseage تم الاشتراك بنجاح');
      }
    }catch(e){
      print(e.toString());
    }
  }
}