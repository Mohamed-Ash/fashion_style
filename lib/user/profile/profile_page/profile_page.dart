// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fashion_style/core/bloc/user_cubit/user_cubit.dart';
import 'package:fashion_style/core/data/repository/user_repository.dart';
import 'package:fashion_style/core/data/web_service/user_web_service.dart';
import 'package:fashion_style/user/profile/profile_widget/profile_widget.dart';
import 'package:fashion_style/user/user_interface.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  String? id;
  
  ProfilePage({
    Key? key,
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Usercubit(UserRepository(UserWebService()))..getUserProfile(id: id!),
      child: ProfileWidget(),
    );
  }
} 
 // UserRepository? userRepository;
  // late ApidatablocuserCubit apidatablocuserCubit;



 
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
