
// ignore_for_file: prefer_const_constructors

import 'package:fashion_style/core/theme/themes_interface.dart';
import 'package:fashion_style/core/theme/themes.dart';
import 'package:flutter/material.dart';
class DefaultTheme extends ThemeInterface {

  @override
  String get name => 'Default Theme';
  
  @override
  get colorSwatch => Colors.blue;


  @override
  // MaterialColor get colorSwatch => throw UnimplementedError();+

  @override
 List<Color> get colors => [
    Color(0xFFFFFFFF), 
    Color(0xFF242526), // IDX:0 | First Color (White / Black) 
    Color(0xFF4996CC), 
    Color(0xFF64D2FF), // IDX:1 | Second Color (Main Button)
    Color(0xFF050505), 
    Color(0xFFE6EAED), // IDX:2 | Third Color (Text Color)
    Color(0xFF65676B),
    Color(0xFFB1B3B8), // IDX:3 | Fourth Color
    Color(0xFFFF9100), 
    Color(0xFFFFB25D), // IDX:4 | Fifth Color
    Color(0xFFFD375F),
    Color(0xFFFD375F), // IDX:5 | Sixth Color
    Color(0xFF64D2FF),
    Color(0xFF64D2FF), // IDX:6 | Gradient Start
    Color(0xFF4996CC),
    Color(0xFF4996CC), // IDX:7 | Gradient End
    Color(0xFFF0F2F5),
    Color(0xFF17191a), // IDX:8 | Profile background
    Color(0xFFE5E5E5),
    Color(0xFFE5E5E5), // IDX:9 | Cards background
 ];


  
  @override
  List<TextStyle> get styles => [
  /* IDX:0   */  TextStyle( fontSize: 11.0,  fontWeight: FontWeight.w700,   color: Themes().color(3)),                                       
  /* IDX:1   */  TextStyle( fontSize: 17.0,  fontWeight: FontWeight.w800,   color: Themes().color(3)),                                       
  ];


}