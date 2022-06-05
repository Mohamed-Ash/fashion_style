// ignore_for_file: non_constant_identifier_names, override_on_non_overriding_member, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdminInterface extends PageLayoutInterface {
  AdminInterface({Key? key}) : super(key: key);

// mixin AdminInterface implements PageLayoutInterface {
  
  @override
  Widget buildBody(BuildContext context) {
    return Container();
  }
}


