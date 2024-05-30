import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:test_task/constants/appcolors.dart';

import '../../../../../globalwidget/export.dart';

class ServicePhoto extends StatelessWidget {
  const ServicePhoto({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(
            text: 'Service photo', size: 14, fontweight: FontWeight.w500),
        SizedBox(height: size.height * 0.015),
        DottedBorder(
            color: const Color(0XFFE6E6E6),
            borderType: BorderType.RRect,
            dashPattern: const [5, 5],
            radius: Radius.circular(size.width * 0.02),
            //
            child: AppshadowContainer(
                width: size.width,
                padding: EdgeInsets.all(size.width * 0.05),
                color: const Color(0XFFF9F9F9),
                child: Column(children: [
                  Icon(Iconsax.gallery_add_copy,
                      size: 40.sp, color: const Color(0XFF808080)),
                  SizedBox(height: size.height * 0.01),
                  const AppText(
                      text: 'Choose file to upload',
                      size: 14,
                      fontweight: FontWeight.w500),
                  SizedBox(height: size.width * 0.01),
                  const AppText(text: 'Formats: png, jpg, jpeg', size: 10)
                ]))),
      ],
    );
  }
}
