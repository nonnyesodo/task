import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/globalwidget/apptext.dart';

import '../constants/appcolors.dart';

class ApptextField extends StatelessWidget {
  const ApptextField({
    super.key,
    this.hinttext,
    this.prefixIcon,
    this.sufixIcon,
    this.controller,
    this.label,
    this.malxLine,
  });
  final String? hinttext, label;
  final int? malxLine;
  final IconData? prefixIcon, sufixIcon;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
        maxLines: malxLine,
        controller: controller,
        decoration: InputDecoration(
            suffixIconColor: MaterialStateColor.resolveWith((states) =>
                states.contains(MaterialState.focused)
                    ? Appcolors.blackColor
                    : Appcolors.blackColor.withOpacity(0.4)),
            prefixIconColor: MaterialStateColor.resolveWith((states) =>
                states.contains(MaterialState.focused)
                    ? Appcolors.blackColor
                    : Appcolors.blackColor.withOpacity(0.4)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.sp),
                borderSide: const BorderSide(color:  Color(0XFFE5E7EB))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.sp),
                borderSide: BorderSide(color: Appcolors.inActive)),
            label: AppText(
                text: label ?? "", size: 12, fontweight: FontWeight.w500),
            hintText: hinttext,
            hintStyle: TextStyle(
                fontFamily: 'Matter',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Appcolors.inActive),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.sp, vertical: 5.sp),
            suffixIcon: sufixIcon == null ? null : Icon(sufixIcon, size: 25.sp),
            prefixIcon:
                prefixIcon == null ? null : Icon(prefixIcon, size: 25.sp)));
  }
}
