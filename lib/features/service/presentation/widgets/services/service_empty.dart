import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/config/page%20route/page_route.dart';
import 'package:test_task/features/service/presentation/bloc/cubit/service_cubit.dart';

import '../../../../../globalwidget/export.dart';
import '../../../data/local/service_images.dart';

class EmptyServices extends StatelessWidget {
  const EmptyServices({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(ServiceImages.empty),
        SizedBox(height: size.height * 0.02),
        const AppText(
            text: 'No services', size: 24, fontweight: FontWeight.w500),
        SizedBox(height: size.height * 0.01),
        const AppText(
            textalign: TextAlign.center,
            text: 'Services you create can be managed from this screen',
            size: 14),
        SizedBox(height: size.height * 0.02),
        AppshadowContainer(
          onTap: () {
            Navigator.pushNamed(context, RouteName.newServices);
            context.read<ServiceCubit>().change();
          },
          padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
          width: size.width * 0.4,
          border: true,
          color: const Color(0xffF3F4F6),
          borderColor: const Color(0xffD6D6D6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add, size: 25.sp),
              SizedBox(width: size.width * 0.02),
              const AppText(
                  text: "New service", size: 16, fontweight: FontWeight.w500)
            ],
          ),
        )
      ],
    );
  }
}
