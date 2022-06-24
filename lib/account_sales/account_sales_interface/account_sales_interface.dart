import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:flutter/material.dart';

abstract class AccountSalesInterface extends PageLayoutInterface{
  const AccountSalesInterface({Key? key}) : super(key: key);



  PreferredSizeWidget? get apBar => AppBar(
    title:  Text(title)
  );

  String get title ;
  
  @override
  Widget? get buildDrawer => const Drawer();
  
}