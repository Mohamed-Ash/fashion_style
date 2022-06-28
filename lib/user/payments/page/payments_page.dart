import 'package:fashion_style/user/payments/widget/payments_widget.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/material.dart';

class PaymentsPage extends UserInterface {
  const PaymentsPage({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
    return const PaymentsWidget();
  }

  @override
  String? get title => '';
}