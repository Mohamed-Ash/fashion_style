
import 'package:fashion_style/core/theme/fonts/fonts_theme.dart';
import 'package:flutter/widgets.dart';

class Margin{
  static const double m8 = 8.0;
  static const double m10 = 10.0;
  static const double m12 = 12.0;
  static const double m14 = 14.0;
  static const double m16 = 16.0;
  static const double m18 = 18.0;
  static const double m20 = 20.0;
  static const double m22 = 22.0;
}

/* class Padding{
  static const double p8 = 8.0;
  static const double p10 = 10.0;
  static const double p12 = 12.0;
  static const double p14 = 14.0;
  static const double p16 = 16.0;
  static const double p18 = 18.0;
  static const double p20 = 20.0;
  static const double p22  = 22.0;
} */

class Size{
  static const double s8 = 8.0;
  static const double s10 = 10.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s22  = 22.0;
}

TextStyle _getTextStyle(
  double fontSize,
  Color color,
  FontWeight fontWeight,
  
  ){
  return TextStyle(
    fontFamily: FontsTheme.fontFamily,
    fontWeight: fontWeight,
    color: color,
    fontSize: fontSize,
  );
}

TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
}){
  return _getTextStyle(
    fontSize,
    color,
    FontWeightManager.light
  );
}

TextStyle getRegulerStyle({
  double fontSizes = FontSize.s14, 
  required Color color,
}){
  return _getTextStyle(
    fontSizes,
    color,
    FontWeightManager.reguler
  );
}

TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  required Color color,
}){
  return _getTextStyle(
    fontSize,
     color,
    FontWeightManager.medium
  );
}

TextStyle getSemiBoldStyle({
  double fontSize =FontSize.s14,
  required Color color,
}){
  return _getTextStyle(
    fontSize, 
    color, 
    FontWeightManager.semiBold
  );
}

TextStyle getBoldStyle({
  double fontSize = FontSize.s16,
  required Color color,
}){
  return _getTextStyle(
    fontSize, 
    color, 
    FontWeightManager.bold
  );
}