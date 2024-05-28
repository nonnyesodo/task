import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/globalwidget/apptext.dart';

import '../constants/appcolors.dart';

class IconwithTitleAndValue extends StatelessWidget {
  const IconwithTitleAndValue({
    super.key,
    required this.size,
    this.icon,
    required this.title,
    required this.value,
    this.image,
    this.img = false,
  });

  final Size size;
  final IconData? icon;
  final String? title, image, value;
  final bool img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.width * 0.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          img
              ? Image.asset(image!, color: Appcolors.blackColor)
              : Icon(icon, size: 20.sp),
          SizedBox(width: size.width * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(text: title!, size: 12),
              AppText(text: value!, size: 16, fontweight: FontWeight.w500),
            ],
          ),
        ],
      ),
    );
  }
}
