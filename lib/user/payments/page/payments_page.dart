import 'package:fashion_style/core/bloc/user_cubit/user_state.dart';
import 'package:fashion_style/user/payments/widget/payments_widget.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentsPage extends UserInterface {
  const PaymentsPage({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
    return const PaymentsWidget();
  }

  @override
  String? get title => '';
}