import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
class AppText extends StatelessWidget {
  const AppText(
      {super.key,
      required this.text,
      this.size = 18,
      this.maxline = 3,
      this.color = Colors.black,
      this.fontweight = FontWeight.w400,
      this.textalign,
      this.height = 0,
      this.fontStyle = FontStyle.normal});
  final String text;
  final FontWeight? fontweight;
  final Color color;
  final double size, height;
  final int maxline;
  final TextAlign? textalign;
  final FontStyle fontStyle;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textalign,
        softWrap: true,
        maxLines: maxline,
        style: TextStyle(
            fontFamily: 'Matter',
            fontStyle: fontStyle,
            height: height,
            fontSize: size.sp,
            fontWeight: fontweight,
            color: color));
  }
}
