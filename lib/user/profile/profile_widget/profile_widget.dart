// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_print

import 'package:fashion_style/user/profile/profile_widget/show_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fashion_style/core/bloc/user_cubit/user_cubit.dart';
import 'package:fashion_style/core/bloc/user_cubit/user_state.dart';

// ignore: must_be_immutable
class ProfileWidget extends StatelessWidget {

  const ProfileWidget({ Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Usercubit, UserState>(
      builder: (context, state) {
        if(state is UserLoadedState) {
          return  ShowProfileWidget(userModel : state.users[1]); //userModel : state.users[2]
        } else if(state is UserLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('error'));
        }
      }
    );
  }
}

/* 

 */