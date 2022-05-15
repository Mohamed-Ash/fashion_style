// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FormFieldBorders{
  static InputDecoration border({
    TextStyle? hintstyle,
    String? hintText,
  }){
    return InputDecoration(
      hintStyle: hintstyle,
      hintText: hintText,
      isDense: true, 
      contentPadding: EdgeInsets.fromLTRB(12.5, 12.5, 12.5, 12.5),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.5,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.5,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.5,
        ),
      ),
    );
  }
}





/* // ignore_for_file: non_constant_identifier_names, unused_label, prefer_const_constructors

import 'package:flutter/material.dart';

class DefaultDecoration extends InputDecoration{
  OutlineInputBorder({ 
    required BorderRadius borderRadius,
    required BorderSide borderSide,
  }){
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2.5,
      ),
    );
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2.5,
      ),
    );
  }
} */