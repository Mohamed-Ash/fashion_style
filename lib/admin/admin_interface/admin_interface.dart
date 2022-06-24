
import 'package:fashion_style/admin/admin_interface/admin_darwer/admin_darwer.dart';
import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
abstract class AdminInterface extends PageLayoutInterface {
  const AdminInterface({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar => AppBar(
    title:  Text(title)
  );

  String get title ;

  @override
  Widget? get buildDrawer => const AdminDrawer();
  
}


