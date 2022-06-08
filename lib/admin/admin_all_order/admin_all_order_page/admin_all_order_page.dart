import 'package:fashion_style/admin/admin_all_order/admin_all_order_widget/admin_all_order_widget.dart';
import 'package:fashion_style/admin/interface/admin_interface.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class AdminAllOrdersPage extends AdminInterface{
  AdminAllOrdersPage({Key? key}) : super(key: key);

  @override
  String get title => 'All Orders';

  @override
  Widget buildBody(BuildContext context) {
    return const AdminAllOrderWidget();
  }
}