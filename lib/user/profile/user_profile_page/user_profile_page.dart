// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:fashion_style/user/cubit/user_cubit.dart';
import 'package:fashion_style/user/cubit/data/repository/user_repository.dart';
import 'package:fashion_style/user/cubit/data/web_service/user_web_service.dart';
import 'package:fashion_style/user/profile/user_profile_widget/user_profile_widget.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class UserProfilePage extends UserInterface {
  // UserRepository? userRepository;
  // late ApidatablocuserCubit apidatablocuserCubit;

   const UserProfilePage({Key? key}) : super(key: key);
 
  @override
  Widget buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => ApidatablocuserCubit(UserRepository(UserWebService()))..getAllUserModel(),
      child: UserProfileWidget(),
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