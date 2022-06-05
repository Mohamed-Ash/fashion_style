// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchPage extends PageLayoutInterface {
  SearchPage({Key? key}) : super(key: key);
  
  @override
  Widget buildBody(BuildContext context) {
    return Column();
  }
}