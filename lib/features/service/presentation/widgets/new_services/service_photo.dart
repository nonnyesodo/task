import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';
import '../../../data/local/service_images.dart';

class ServicePhoto extends StatelessWidget {
  const ServicePhoto({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(
            text: 'Service photo', size: 14, fontweight: FontWeight.w400),
        SizedBox(height: size.height * 0.015),
        Container(
            color: Appcolors.inActive.withOpacity(0.1),
            width: size.width,
            child: DottedBorder(
                strokeCap: StrokeCap.round,
                color: Appcolors.inActive,
                dashPattern: const [8, 3],
                padding: EdgeInsets.all(size.width * 0.04),
                radius: Radius.circular(100.sp),
                child: Center(
                    child: Column(children: [
                  Image.asset(ServiceImages.gallery),
                  SizedBox(height: size.height * 0.01),
                  const AppText(
                      text: 'Choose file to upload',
                      size: 14,
                      fontweight: FontWeight.w500),
                  const AppText(text: 'Formats: png, jpg, jpeg', size: 10)
                ])))),
      ],
    );
  }
}
