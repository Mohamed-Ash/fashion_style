// ignore_for_file: avoid_print

import 'package:fashion_style/core/data/model/auth_login_model.dart';
import 'package:fashion_style/core/data/web_service/auth_login_web_service.dart';

class AuthloginRepository{
  late AuthLoginWebSevice authLoginWebSevice;
  final String email;
  final String password;
  AuthloginRepository({required this.email,required this.password});

  Future<AuthLoginModel> postLogin()async{
    final authLogin = await authLoginWebSevice.loginWidget(email: email, password: password);
    print(email + password);
    return AuthLoginModel.fromJson(authLogin);
  }
}