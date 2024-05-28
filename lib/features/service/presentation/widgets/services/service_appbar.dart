import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';

class ServiceAppbar extends StatelessWidget {
  const ServiceAppbar({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      child: Row(
        children: [
          const AppText(
              text: "Services", size: 24, fontweight: FontWeight.w500),
          const Spacer(),
          AppshadowContainer(
              border: true,
              radius: size.width * 0.02,
              padding: EdgeInsets.all(size.width * 0.01),
              borderColor: Appcolors.inActive,
              child: Icon(CupertinoIcons.search, size: 20.sp)),
          SizedBox(width: size.width * 0.03),
          AppshadowContainer(
              border: true,
              radius: size.width * 0.02,
              padding: EdgeInsets.all(size.width * 0.01),
              borderColor: Appcolors.inActive,
              child: Icon(CupertinoIcons.arrow_up_arrow_down, size: 18.sp)),
        ],
      ),
    );
  }
}
