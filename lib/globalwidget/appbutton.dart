import 'package:flutter/material.dart';
import '../constants/appcolors.dart';
import 'export.dart';

class Appbutton extends StatelessWidget {
  const Appbutton(
      {super.key,
      this.buttonColor,
      this.child,
      this.label,
      this.onTap,
      this.width,
      this.height,
      this.labelColor});

  final Color? buttonColor, labelColor;
  final Widget? child;
  final String? label;
  final Function()? onTap;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AppshadowContainer(
        onTap: onTap,
        shadowcolour: Colors.transparent,
        width: width ?? size.width,
        height: height ?? size.height * 0.065,
        radius: size.width * 0.02,
        color: buttonColor ?? Appcolors.green,
        child: child ??
            AppText(
                text: label ?? '',
                color: labelColor ?? Appcolors.white,
                size: 16,
                fontweight: FontWeight.w500));
  }
}
