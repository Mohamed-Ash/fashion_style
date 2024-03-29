// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fashion_style/core/data/model/user_model.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';

// ignore: must_be_immutable
class PreviewProfileWidget extends StatelessWidget {

  final UserModel userModel;

  const PreviewProfileWidget({
    Key? key,
    required this.userModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
          color: ColorsTheme.primary,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(  
              MediaQuery.of(context).size.width, 120.0,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 55),
            child: Center(
              child: Container( 
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: ColorsTheme.backgaroundPage,
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    scale: 10 ,
                    fit: BoxFit.none,
                    alignment: Alignment.center,
                    image: AssetImage('assets/images/userrr.png',)
                  ) ,
                ),
              ),
            ),
          ),
        ),
        Text(
          '${userModel.email}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: ColorsTheme.black,
          ),
        ),
        const SizedBox(height: 10,),
        Text(
          '${userModel.phoneNumber}',
          style: TextStyle(
            fontSize: 20,
            color: ColorsTheme.black,
          ),
        ),
        const SizedBox(height: 10,),
        Text(
          'id: ${userModel.id}',
          style: TextStyle(
            fontSize: 20,
            color: ColorsTheme.black,
          ),
        ),
        const SizedBox(height: 10,),
        Text('gender: ${userModel.userName}',
          style: TextStyle(
            fontSize: 20,
            color: ColorsTheme.black,
          ),
        ),
        const SizedBox(height: 10,),
        Text('phoneNumber: ${userModel.phoneNumber}',
          style: TextStyle(
            fontSize: 20,
            color: ColorsTheme.black,
          ),
        ),
        const SizedBox(height: 10,),
        Text(' ${userModel.id}',
          style: TextStyle(
            fontSize: 20,
            color: ColorsTheme.black,
          ),
        ),
      ],
    ); 
  }
}
