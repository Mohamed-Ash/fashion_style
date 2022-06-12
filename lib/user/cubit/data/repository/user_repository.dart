// ignore_for_file: avoid_print


import 'package:fashion_style/user/cubit/data/model/user_model.dart';
import 'package:fashion_style/user/cubit/data/web_service/user_web_service.dart';

class UserRepository{
  final UserWebService? usersWebServices;

  UserRepository(this.usersWebServices);

  Future<List<UserModel>> getAllUserRepository()async{
    final users = await usersWebServices?.getAllUsers();
    return users!.map((user) => UserModel.fromJson(user)).toList();
  }
}