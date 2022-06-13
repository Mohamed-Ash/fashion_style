// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:fashion_style/core/bloc/user_cubit/user_cubit.dart';
import 'package:fashion_style/core/data/repository/user_repository.dart';
import 'package:fashion_style/core/data/web_service/user_web_service.dart';
import 'package:fashion_style/user/profile/profile_widget/profile_widget.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ProfilePage extends UserInterface {
  // UserRepository? userRepository;
  // late ApidatablocuserCubit apidatablocuserCubit;

   const ProfilePage({Key? key}) : super(key: key);
 
  @override
  Widget buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => Usercubit(UserRepository(UserWebService()))..getAllUserModel(),
      child: ProfileWidget(),
    );
  }
  
  @override
  String get title => 'profile';

 /*  @override
  PreferredSizeWidget? get buildAppBar => AppBar(
    title: Text('fashion style'),
    elevation: 0,
  ); */
  
/*   @override
  Widget? get buildDrawer =>  DrawerPage();

  @override
  Widget buildBody(BuildContext context) {
    return UserProfileWidget();
  }
  
  @override
  bool get backButton => true;
  
  @override
  String get title => 'profile';
 */
}