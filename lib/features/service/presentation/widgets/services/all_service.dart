import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/page route/page_route.dart';
import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';
import '../../../data/local/service_images.dart';

class ALLServices extends StatelessWidget {
  const ALLServices({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: List.generate(
              2,
              (index) => AppshadowContainer(
                    onTap: () =>
                        Navigator.pushNamed(context, RouteName.serviceDetail),
                    radius: size.width * 0.03,
                    margin: EdgeInsets.symmetric(vertical: size.width * 0.02),
                    padding: EdgeInsets.all(size.width * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(size.width * 0.03),
                          child: Image.asset(ServiceImages.nail,
                              width: size.width, fit: BoxFit.cover),
                        ),
                        SizedBox(height: size.height * 0.01),
                        const AppText(
                            text: 'Nail Polish & Painting',
                            size: 20,
                            fontweight: FontWeight.w500),
                        const AppText(
                            text:
                                'Are you a startup looking to hit the ground running with that mega idea or a junior ...',
                            size: 14),
                        SizedBox(height: size.height * 0.01),
                        Row(
                          children: [
                            Image.asset(ServiceImages.moneys),
                            SizedBox(width: size.width * 0.01),
                            const AppText(
                                text: 'GHS 90.00',
                                size: 16,
                                fontweight: FontWeight.w500),
                            const Spacer(),
                            Icon(Icons.access_time_rounded,
                                size: 20.sp, color: Appcolors.inActive),
                            SizedBox(width: size.width * 0.01),
                            const AppText(
                                text: '60 min',
                                size: 16,
                                fontweight: FontWeight.w500),
                          ],
                        )
                      ],
                    ),
                  ))),
    );
  }
}
