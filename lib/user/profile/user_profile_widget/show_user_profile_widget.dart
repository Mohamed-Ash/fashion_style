import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/user/cubit/data/model/user_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShowUserProfileWidget extends StatelessWidget {
  UserModel? userModel;
  // late List<UserModel> userModel;

  ShowUserProfileWidget({Key? key,required this.userModel}) : super(key: key);

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
                    // fit: BoxFit.fitWidth,
                    // image: NetworkImage(
                    //   url,
                    // ),
                    alignment: Alignment.center,
                    // opacity: 52,
                    image: AssetImage('assets/images/userrr.png',)
                  ) ,
                ),
              ),
            ),
          ),
        ),
        /* Text('${userModel}',),
        const SizedBox(height: 10,),
        Text('${userModel.length}',),
        const SizedBox(height: 10,),
        Text('${userModel.length}',), */
      ],
    ); 
  }
}