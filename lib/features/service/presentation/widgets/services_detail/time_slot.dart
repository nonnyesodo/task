import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';
import '../../../data/local/service_static_repo.dart';

class ServiceDetailTimeSlot extends StatelessWidget {
  const ServiceDetailTimeSlot({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.access_time, size: 20.sp),
        SizedBox(width: size.width * 0.02),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(text: 'Time slots', size: 12),
            SizedBox(
              width: size.width * 0.8,
              child: Wrap(
                  runSpacing: size.width * 0.02,
                  spacing: size.width * 0.03,
                  children: List.generate(
                      ServiceStaticRepo.timeSlot.length,
                      (index) => AppshadowContainer(
                            radius: size.width * 0.01,
                            padding: EdgeInsets.all(size.width * 0.01),
                            width: size.width * 0.13,
                            color: Appcolors.inActive.withOpacity(0.3),
                            child: AppText(
                                text: ServiceStaticRepo.timeSlot[index],
                                size: 14),
                          ))),
            )
          ],
        ),
      ],
    );
  }
}
