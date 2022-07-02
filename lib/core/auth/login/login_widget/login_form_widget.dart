// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:flutter/material.dart';

class LoginFormWidgt extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  LoginFormWidgt({Key? key}) : super(key: key);

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
             const Center(
                 child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 22
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text('Email:'),
              const SizedBox(
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
              const SizedBox(
                height: 10,
              ),
              const Text('Password:'),
              const SizedBox(
                height: 2.5,
              ),
              DefaulteFormField.field(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscure: true,
                validate: (value) => value == null || value.length < 6 ? 'Password does  not match' : null,
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: ()async{
                  if(formKey.currentState!.validate()) {
                    loginWidget(context);
                  }
                },
                child: DefaulteFormField.container(
                  child: const Center(
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
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  print("successfully");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Registerpage(),
                    ),
                  );
                },
                child: DefaulteFormField.container(
                  child: const Center(
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
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, appPage);
                },
                child: const Text(
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
  
  Future loginWidget(context)async{
    try{
      Response response = await Dio().post(
        'http://jack07-001-site1.htempurl.com/api/Accounts/Login',
        data: {
          "email": emailController.text,
          "password": passwordController.text,
          "rememberMe": false
        } ,    
      );
      if (response.statusCode == 200) {
      print(response.statusCode.toString());
        Navigator.pushNamed(context, appPage);
      }
    }catch(e){
      print(e.toString());
    }
  }
}