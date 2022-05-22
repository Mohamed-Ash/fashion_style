 // ignore_for_file: prefer_conditional_assignment, unnecessary_new, unused_shown_name, unused_local_variable

 import 'package:fashion_style/core/theme/default_theme.dart';
import 'package:fashion_style/core/theme/themes_interface.dart';
import 'package:flutter/material.dart' show AppBarTheme, ChangeNotifier, Color, Colors, FontWeight, TextStyle, TextTheme, ThemeData, ThemeMode;

class Themes with ChangeNotifier{
  late ThemeInterface _theme;
  

  List<ThemeInterface> get _themes => [
    DefaultTheme(),
  ];

  
  Color color(int index){
    int _index;
    
    if (index >= _theme.colors.length) {
      _index = 0;
    } else {
      _index = index;
    }

    return  _theme.colors[index];
  }

  TextStyle style(int index){
    if(index >= _theme.styles.length){
      return _theme.styles[0];
    }
    return _theme.styles[index];
  } 
  
  ThemeData get theme => ThemeData(
    primarySwatch: _theme.colorSwatch,
  );

 
  
  ThemeInterface findTheme(String name) {
    for (ThemeInterface theme in _themes) {
      if (theme.name == name) {
        return theme;
      }
    }
    return _themes[0];
  }
  
  Themes.init();

  static Themes? _instance;

  factory Themes() {
      if (_instance == null) {
        _instance = new Themes.init();
      }
      return _instance!;
    }
 
}