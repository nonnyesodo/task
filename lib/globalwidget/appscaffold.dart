import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/appcolors.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold(
      {super.key, this.color, required this.body, this.floatingActionButton});
  final Color? color;
  final Widget? body, floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: floatingActionButton,
        backgroundColor: color ?? Appcolors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(10.h),
            child: AppBar(
                forceMaterialTransparency: true,
                automaticallyImplyLeading: false,
                backgroundColor: color ?? Appcolors.white)),
        body: body);
  }
}
