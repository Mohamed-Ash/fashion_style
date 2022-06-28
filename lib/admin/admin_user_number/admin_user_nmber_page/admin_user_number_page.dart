import 'package:fashion_style/admin/admin_user_number/admin_user_number_widget/admin_user_number_widget.dart';
import 'package:fashion_style/admin/admin_interface/admin_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdminUserNumberPage extends AdminInterface {
 const AdminUserNumberPage({Key? key}) : super(key: key);

  @override
  String get title => 'User Number';

  bool get backButton => true;

  @override
  Widget buildBody(BuildContext context) {
    return const AdminUserNumberWidget();
  }
}