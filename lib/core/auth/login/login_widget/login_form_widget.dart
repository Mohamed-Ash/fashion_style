// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:fashion_style/core/data/repository/auth_login_repository.dart';
import 'package:fashion_style/core/data/web_service/auth_login_web_service.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/service/auth_service.dart';
import 'package:fashion_style/core/service/data_storage_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginFormWidgt extends StatefulWidget {

  const LoginFormWidgt({Key? key}) : super(key: key);

  @override
  State<LoginFormWidgt> createState() => _LoginFormWidgtState();
}

class _LoginFormWidgtState extends State<LoginFormWidgt> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final DataStorageService _dataStorageService = DataStorageService();
  AuthLoginWebSevice authLoginWebSevice = AuthLoginWebSevice();
  
   
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
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
                    // AuthloginRepository(email: emailController.text, password: passwordController.text);
                    // testLogin(context);
                    //  loginWidget(context);
                    authLoginWebSevice.loginWidget(
                      email: emailController.text ,
                      password: passwordController.text,
                    ).then((value) => 
                    Navigator.pushNamed(context, appPage),
                    );
                   /*
                    _dataStorageService.saveString('email', 'useremail@gmail.com'); */
                    /* authloginRepository.postLogin(
                      email: emailController.text, 
                      password: passwordController.text,
                      context: context
                    ); */
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
                onPressed: () async{
                 
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

 /*   testLogin(BuildContext context){
    return AuthloginRepository(
      email: emailController.text,
      password: passwordController.text,
    );
  } */
  /* Future loginWidget(context)async{
    try{
      Response response = await Dio().post(
        'http://jack07-001-site1.htempurl.com/api/Accounts/Login',
        data: {
          "email": emailController.text,
          "password": passwordController.text,
          "rememberMe": true
        } ,    
      );
      if (response.statusCode == 200) {
        AuthService().id = response.data['userId'];
        AuthService().statusMessage = response.data["statusMessage"];
        print("test massage " + response.data["statusMessage"].toString());
          _dataStorageService.saveString('user.id','${response.data["userId"]}');
            print('[test massage  +++++++++++#######+  ]  ' + _dataStorageService.getString('user.id').toString());
        Navigator.pushNamed(context, appPage);
      }
    }catch(e){
      print(e.toString());
    }
  } */
}