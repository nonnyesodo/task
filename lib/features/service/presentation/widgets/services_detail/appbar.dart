import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/features/service/presentation/widgets/services_detail/more_modal.dart';

import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';

class ServiceDetailAppbar extends StatelessWidget {
  const ServiceDetailAppbar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppbackButton(),
          AppshadowContainer(
              onTap: () => showModalBottomSheet(
                  context: context,
                  backgroundColor: const Color(0XFFF8F8F8),
                  showDragHandle: true,
                  builder: (context) {
                    return const MoreModalsheet();
                  }),
              border: true,
              radius: size.width * 0.02,
              padding: EdgeInsets.all(size.width * 0.01),
              borderColor: const Color(0xFFF0F0F0),
              child: Icon(CupertinoIcons.ellipsis,
                  color: Appcolors.blackColor, size: 20.sp)),
        ],
      ),
    );
  }
}
