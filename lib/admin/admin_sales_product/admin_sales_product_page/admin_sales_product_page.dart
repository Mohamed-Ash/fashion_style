import 'package:fashion_style/admin/admin_interface/admin_interface.dart';
import 'package:flutter/material.dart';

import '../admin_sales_product_widget/admin_sales_product_widget.dart';

// ignore: must_be_immutable
class AdminSalesProduct extends AdminInterface{
  const AdminSalesProduct({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
    return const AdminSalesProductWidget();
  }

  @override
  String get title => 'Sales Product';

  bool get backButton => true;
}