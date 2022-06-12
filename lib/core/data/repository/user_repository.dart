// ignore_for_file: avoid_print

import 'package:fashion_style/core/data/model/user_model.dart';
import 'package:fashion_style/core/data/web_service/user_web_service.dart';

class UserRepository{
  final UserWebService? usersWebServices;

  UserRepository(this.usersWebServices);

  Future<List<UserModel>> getProfileUserRepository()async{
    final users = await usersWebServices?.getProfileUsers();
    return users!.map((user) => UserModel.fromJson(user)).toList();
  }
}