
// ignore_for_file: prefer_initializing_formals

import 'package:flutter/material.dart' show Color, MaterialColor, TextStyle;



abstract class ThemeInterface {  
  MaterialColor get colorSwatch;

  String get name;
  
  List<Color> get colors;

  List<TextStyle> get styles;
}