 // ignore_for_file: 

import 'package:fashion_style/user/profile/profile_widget/preview_profile_widget.dart';
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
        if(state is UserProfileLoadedState) {
          //  userModel = (state).users; 
           return PreviewProfileWidget(userModel: state.userProfile);
          // return   ShowProfileWidget(userModel: state.users.first,); //userModel : state.users[2]
        } else if(state is UserLoadingState){
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('error'));
        }
      }
    );
  }

  /* Widget buildProfilesList(){
    return GridView.builder(
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2/4,
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ), 
      itemBuilder: (context, index){
        return ShowProfileWidget(userModel: userModel,);
      }
    );
  } */
}