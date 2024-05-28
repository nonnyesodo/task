import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/constants/appcolors.dart';
import 'package:test_task/features/service/presentation/bloc/cubit/service_cubit.dart';
import '../../../../globalwidget/export.dart';
import '../widgets/services/exports.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    final watchService = context.watch<ServiceCubit>();
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ServiceAppbar(size: size),
          SizedBox(height: size.height * 0.02),
          Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  width: size.width,
                  color: const Color(0xffF3F4F6),
                  child: watchService.length == 0
                      ? EmptyServices(size: size)
                      : ALLServices(size: size)))
        ],
      ),
      floatingActionButton: Visibility(
        visible: watchService.length > 0,
        child: AppshadowContainer(
            width: size.width * 0.11,
            height: size.width * 0.11,
            color: Appcolors.green,
            child: Icon(Icons.add, color: Appcolors.white, size: 20.sp)),
      ),
    );
  }
}
