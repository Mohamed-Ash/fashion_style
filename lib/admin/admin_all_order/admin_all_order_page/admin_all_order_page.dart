import 'package:fashion_style/admin/admin_all_order/admin_all_order_widget/admin_all_order_widget.dart';
import 'package:fashion_style/admin/admin_interface/admin_interface.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class AdminAllOrdersPage extends AdminInterface{
  const AdminAllOrdersPage({Key? key}) : super(key: key);


  bool get backButton => true;

  @override
  String get title => 'All Orders';

  @override
  Widget buildBody(BuildContext context) {
    return const AdminAllOrderWidget();
  }
}