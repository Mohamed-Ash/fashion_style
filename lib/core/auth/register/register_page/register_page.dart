// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fashion_style/core/auth/register/register_widget/register_widget.dart';
import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Registerpage extends PageLayoutInterface {
  const Registerpage({Key? key}) : super(key: key);

  bool get backButton => false;

  @override
  Widget buildBody(BuildContext context) {
    return RegisterWidget();
  }
}