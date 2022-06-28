import 'package:fashion_style/admin/admin_sales_number/admin_sales_number_widget/admin_sales_number_widget.dart';
import 'package:fashion_style/admin/admin_interface/admin_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdminSalesNumberPage extends AdminInterface{
 const AdminSalesNumberPage({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
    return const AdminSalesNumberWidget();
  }

  @override
  String get title => 'Sales Nmber';
  
  bool get backButton => true;
}