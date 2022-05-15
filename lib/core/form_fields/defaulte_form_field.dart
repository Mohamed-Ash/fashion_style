// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:fashion_style/core/form_fields/form_field_borders.dart';
import 'package:flutter/material.dart';

class DefaulteFormField{
  static TextFormField Field({
    TextInputType? keyboardType,
    required Function onTap,
  }){
    return TextFormField(
      decoration: FormFieldBorders.border(),
      cursorColor: Colors.black,
      keyboardType: keyboardType ,
      onTap: (){
        onTap();
      },
      
    );
  }

  static Container container({
    required Widget child,
  }){
    return Container(
      width: double.infinity,
      height: 35,
      child: child,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 146, 227, 169),
        borderRadius: BorderRadius.circular(20),
        border: Border(
          bottom:  BorderSide(
            color: Color.fromARGB(255, 1, 48, 2),
            width: 2,
          ),
          left: BorderSide(
            color: Color.fromARGB(255, 1, 48, 2),
            width: 2,
          ),
          right:  BorderSide(
            color: Color.fromARGB(255, 1, 48, 2),
            width: 2,
          ),
          top:  BorderSide(
            color: Color.fromARGB(255, 1, 48, 2),
            width: 2,
          ),
        ),
      ),
    );
  }
}

// Color.fromARGB(255, 1, 48, 2) EXD first || line border
// Color.fromARGB(255, 4, 37, 5) EXD second || line border
// Color.fromARGB(255, 192, 255, 194) EXD first || decoration
// Color.fromARGB(255, 146, 227, 169) EXD second || decoration