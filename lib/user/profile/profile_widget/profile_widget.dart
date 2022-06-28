 // ignore_for_file: 

import 'package:fashion_style/core/data/model/user_model.dart';
import 'package:fashion_style/user/profile/profile_widget/show_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fashion_style/core/bloc/user_cubit/user_cubit.dart';
import 'package:fashion_style/core/bloc/user_cubit/user_state.dart';

// ignore: must_be_immutable
class ProfileWidget extends StatelessWidget {
  late List<UserModel> userModel; 

  ProfileWidget({ Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Usercubit, UserState>(
      builder: (context, state) {
        if(state is UserLoadedState) {
          //  userModel = (state).users; 
           return ShowProfileWidget(userModel: state.users[0],);
          // return   ShowProfileWidget(userModel: state.users.first,); //userModel : state.users[2]
        } else if(state is UserLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('error'));
        }
      }
    );
  }

  Widget buildProfilesList(){
    return GridView.builder(
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2/4,
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ), 
      itemBuilder: (context, index){
        return ShowProfileWidget(userModel: userModel[index],);
      }
    );
  }
}