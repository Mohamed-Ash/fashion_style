
import 'package:fashion_style/core/data/model/user_model.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UserState {}

class UserInitialState extends UserState {}
// ignore: must_be_immutable
class UserProfileLoadedState extends UserState {
 final UserModel userProfile;
  UserProfileLoadedState(this.userProfile);
}

// ignore: must_be_immutable
class UserLoadingState extends UserState {
  
}