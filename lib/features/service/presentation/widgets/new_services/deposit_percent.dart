import 'package:flutter/material.dart';
import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';
import '../../../data/local/service_static_repo.dart';

class DepositPercent extends StatelessWidget {
  const DepositPercent({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * 0.02),
        const AppText(
            text: "Percentage to deposit",
            size: 14,
            fontweight: FontWeight.w500),
        SizedBox(height: size.width * 0.01),
        const AppText(
            text: "Specify percentage required for down payment", size: 12),
        SizedBox(height: size.height * 0.02),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                ServiceStaticRepo.depositPercent.length,
                (index) => AppshadowContainer(
                      color: const Color(0XFFF0FFFD),
                      radius: size.width * 0.02,
                      padding: EdgeInsets.symmetric(
                          vertical: size.width * 0.02,
                          horizontal: size.width * 0.05),
                      border: true,
                      borderColor: Appcolors.green,
                      child: AppText(
                          text: ServiceStaticRepo.depositPercent[index],
                          size: 14),
                    ))),
      ],
    );
  }
}
