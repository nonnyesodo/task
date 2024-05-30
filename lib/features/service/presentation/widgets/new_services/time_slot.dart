import 'package:flutter/material.dart';

import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';
import '../../../data/local/service_static_repo.dart';

class TimeSlot extends StatelessWidget {
  const TimeSlot({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * 0.03),
        const AppText(
            text: "Time slots", size: 14, fontweight: FontWeight.w500),
        SizedBox(height: size.width * 0.01),
        const AppText(
            text:
                "Represents time slots your clients can pick from based upon your availability",
            size: 12),
        SizedBox(height: size.height * 0.02),
        Wrap(
            runSpacing: size.width * 0.03,
            spacing: size.width * 0.03,
            children: List.generate(
                ServiceStaticRepo.timeSlot.length,
                (index) => AppshadowContainer(
                      width: size.width * 0.2,
                      radius: size.width * 0.02,
                      color: const Color(0XFFF0FFFD),
                      padding:
                          EdgeInsets.symmetric(vertical: size.width * 0.02),
                      border: true,
                      borderColor: Appcolors.green,
                      child: AppText(
                          fontweight: FontWeight.w500,
                          text: ServiceStaticRepo.timeSlot[index],
                          size: 14),
                    ))),
        SizedBox(height: size.height * 0.02),
        AppshadowContainer(
            padding: EdgeInsets.all(size.width * 0.025),
            border: true,
            borderColor: const Color(0XFFD6D6D6),
            child: const AppText(
                text: "Select all", size: 16, fontweight: FontWeight.w500)),
        SizedBox(height: size.height * 0.02),
      ],
    );
  }
}
