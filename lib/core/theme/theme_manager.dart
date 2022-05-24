// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:flutter/material.dart';

ThemeData getAppThemeData(){
  return ThemeData(
    primaryColor: ColorsTheme.primary,
    applyElevationOverlayColor: true,
/*     progressIndicatorTheme: ProgressIndicatorThemeData(
      circularTrackColor: ColorsTheme.green,
    ), */
    scaffoldBackgroundColor:  ColorsTheme.backgaroundPage,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsTheme.primary,
      elevation: 0.5,
      centerTitle: true,
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