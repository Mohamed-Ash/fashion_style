// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fashion_style/core/bloc/user_cubit/user_cubit.dart';
import 'package:fashion_style/core/bloc/user_cubit/user_state.dart';
import 'package:fashion_style/user/profile/user_profile_widget/show_user_profile_widget.dart';

// ignore: must_be_immutable
class UserProfileWidget extends StatelessWidget {

  const UserProfileWidget({ Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Usercubit, UserState>(
      builder: (context, state) {
        if(state is UserLoadedState) {
          return  ShowUserProfileWidget(userModel : state.users[0]); //userModel : state.users[2]
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