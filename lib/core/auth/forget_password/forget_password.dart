import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ForgetPassword extends PageLayoutInterface {
  const ForgetPassword({Key? key}) : super(key: key);

  bool get backButton => true;
  
  @override
  Widget buildBody(BuildContext context) {
    return Container();
  }
}