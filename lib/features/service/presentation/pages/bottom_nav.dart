import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/features/service/presentation/bloc/cubit/service_cubit.dart';

import '../../../../constants/appcolors.dart';
import '../../../../globalwidget/export.dart';
import '../../data/local/service_static_repo.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final watchHome = context.watch<ServiceCubit>();
    return Scaffold(
        // extendBody: true,
        body: watchHome.bottomnavScreen[watchHome.bottonnavIndex],
        bottomNavigationBar: AppshadowContainer(
            height: size.height * 0.08,
            radius: 0,
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04, vertical: size.width * 0.02),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    ServiceStaticRepo.bottomNav.length,
                    (index) => BottomNavButtons(
                        onTap: () => index == 3
                            ? context
                                .read<ServiceCubit>()
                                .changeBottomNav(index)
                            : () {},
                        image: ServiceStaticRepo.bottomNav[index].image!,
                        title: ServiceStaticRepo.bottomNav[index].title!,
                        size: size,
                        isActive: watchHome.bottonnavIndex == index)))));
  }
}

class BottomNavButtons extends StatelessWidget {
  const BottomNavButtons(
      {super.key,
      required this.size,
      this.isActive = false,
      required this.image,
      required this.title,
      this.onTap});

  final Size size;
  final bool isActive;
  final String image;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(children: [
        Image.asset(image,
            color: isActive ? Appcolors.green : Appcolors.inActive),
        SizedBox(width: size.width * 0.01),
        AppText(
            text: title,
            color: isActive ? Appcolors.green : Appcolors.inActive,
            size: 10,
            fontweight: FontWeight.w500)
      ]),
    );
  }
}
