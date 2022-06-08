

import 'package:fashion_style/admin/interface/admin_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdminDashboard extends AdminInterface{
  AdminDashboard({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(50),
      child: Column(
        children: const [
          Text('Admin Page'),
        ],
      ) ,
    );
  }
  
  @override
  String get title => 'Admin Dashboard';
  
  
/*   @override
  PreferredSizeWidget? get buildAppBar => throw UnimplementedError();
  
  @override
  Widget? get buildDrawer => throw UnimplementedError(); */
}