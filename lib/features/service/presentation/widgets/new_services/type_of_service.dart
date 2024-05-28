import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';
import '../../../data/local/service_static_repo.dart';

class TypeOfServices extends StatelessWidget {
  const TypeOfServices({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(
            text: 'Type of service', size: 14, fontweight: FontWeight.w500),
        SizedBox(height: size.height * 0.01),
        Column(
            children: List.generate(
                ServiceStaticRepo.typeOfService.length,
                (index) => AppshadowContainer(
                      margin: EdgeInsets.only(bottom: size.width * 0.03),
                      padding: EdgeInsets.all(size.width * 0.04),
                      border: true,
                      borderColor: Appcolors.green,
                      child: Row(
                        children: [
                          AppshadowContainer(
                              border: true,
                              borderColor: Appcolors.green,
                              child: Icon(Icons.circle,
                                  size: 20.sp, color: Appcolors.green)),
                          SizedBox(width: size.width * 0.02),
                          AppText(
                              maxline: 2,
                              text: ServiceStaticRepo.typeOfService[index],
                              size: 14)
                        ],
                      ),
                    ))),
      ],
    );
  }
}
