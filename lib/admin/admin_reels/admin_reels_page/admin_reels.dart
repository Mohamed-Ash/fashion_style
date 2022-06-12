import 'package:fashion_style/admin/admin_reels/admin_reels_widget/admin_reels_widget.dart';
import 'package:fashion_style/admin/admin_interface/admin_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdminReels extends AdminInterface{
  const AdminReels({Key? key}) : super(key: key);

  @override
  String get title => 'Admin Reels';

  @override
  Widget buildBody(BuildContext context) {
    return const AdminReelsWidget();
  }
  
}