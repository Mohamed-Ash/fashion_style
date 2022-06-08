
import 'package:fashion_style/admin/admin_darwer/admin_darwer.dart';
import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
abstract class AdminInterface extends PageLayoutInterface {
  AdminInterface({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get buildAppBar => AppBar();
  @override
  Widget? get buildDrawer => const AdminDrawer();
  
  @override
  Widget buildBody(BuildContext context) {
    return Container();
  }
}


