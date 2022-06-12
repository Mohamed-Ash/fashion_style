
import 'package:fashion_style/user/cubit/data/model/user_model.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UserState {}

class UserInitialState extends UserState {}
// ignore: must_be_immutable
class UserLoadedState extends UserState {
  List<UserModel> users;
  UserLoadedState(this.users);
}

// ignore: must_be_immutable
class UserLoadingState extends UserState {
  
}