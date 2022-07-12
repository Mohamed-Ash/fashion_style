// ignore_for_file: avoid_print

import 'package:fashion_style/core/data/model/auth_login_model.dart';
import 'package:fashion_style/core/data/web_service/auth_login_web_service.dart';
import 'package:flutter/material.dart';

class AuthloginRepository{
  late AuthLoginWebSevice authLoginWebSevice;
  final AuthLoginModel authLoginModel = AuthLoginModel(); 

  Future<AuthLoginModel> postLogin({
    required String email, 
    required String  password, 
    // required BuildContext context,
    })async{
    final authLogin = await authLoginWebSevice.loginWidget(
      email: email, 
      password: password, 
      // context: context
    );
    return AuthLoginModel.fromJson(authLogin);
  }
}