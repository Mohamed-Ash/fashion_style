import 'package:fashion_style/admin/active_sales/active_sales_widget/active_sales_widget.dart';
import 'package:fashion_style/admin/admin_interface/admin_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActiveSales extends AdminInterface {
  const ActiveSales({Key? key}) : super(key: key);

  bool get backButton => true;
  
  @override
  Widget buildBody(BuildContext context) {
    return const ActiveSalesWidget();
  }
  
  @override
  String get title => 'Active Sales';
  
  @override
  bool get isAppBar => true;
   
}