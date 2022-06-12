// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fashion_style/account_sales/account_sales_widget/account_sales_widget.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AccountProfileSalesPage extends UserInterface{
  const AccountProfileSalesPage({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
   return AccountSalesWidget();
  }
  
  
  bool get backButton => true;
  
  
  bool get isAppBar => true;
  
  @override
  String get title => throw UnimplementedError();
}

// Todo : rahan 1000 (eg)