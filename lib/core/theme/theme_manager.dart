// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData getAppThemeData(){
  return ThemeData(
    primaryColor: ColorsTheme.primary,
    applyElevationOverlayColor: true,
    
/*     progressIndicatorTheme: ProgressIndicatorThemeData(
      circularTrackColor: ColorsTheme.green,
    ), */
    dividerTheme: DividerThemeData(
      color: ColorsTheme.dividerColor,
    ),
    scaffoldBackgroundColor:  ColorsTheme.backgaroundPage,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsTheme.primary,
      elevation: 0.5,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black38,
        statusBarIconBrightness: Brightness.light
      ) ,
      
      
    ) ,
    
    // bannerTheme: MaterialBannerThemeData(

    //   backgroundColor: ColorsTheme.wight, 

    // ),
    dividerColor: ColorsTheme.backgaround,

    cursorColor: ColorsTheme.primary,
    cardTheme: CardTheme(

      
    )
  );
}