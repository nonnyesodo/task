import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/constants/appcolors.dart';
import 'package:test_task/globalwidget/apptext.dart';

class IconwithTitleAndValue extends StatelessWidget {
  const IconwithTitleAndValue({
    super.key,
    required this.size,
    this.icon,
    required this.title,
    required this.value,
  });

  final Size size;
  final IconData? icon;
  final String? title, value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.width * 0.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20.sp,
            color: const Color(0xFF808080),
          ),
          SizedBox(width: size.width * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: title!,
                size: 12,
                color: Appcolors.lightBlack              ),
              AppText(text: value!, size: 16, fontweight: FontWeight.w500),
            ],
          ),
        ],
      ),
    );
  }
}
