import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
// import 'package:iconsax/iconsax.dart';

import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';
import '../../../data/local/service_images.dart';

class ServiceDetailGoogleMeetLink extends StatelessWidget {
  const ServiceDetailGoogleMeetLink({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.link, color: const Color(0xFF808080), size: 20.sp),
        SizedBox(width: size.width * 0.02),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(
                text: 'Google meet link', color: Color(0XFF808080), size: 12),
            SizedBox(height: size.width * 0.01),
            AppText(
                text: 'https://meet.google.com/pni....',
                size: 16,
                color: Appcolors.blue,
                fontweight: FontWeight.w500),
          ],
        ),
        const Spacer(),
        Icon(Iconsax.document_copy_copy,
            size: 20.sp, color: const Color(0xFF808080)),
      ],
    );
  }
}
