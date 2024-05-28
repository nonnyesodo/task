

import 'package:flutter/material.dart';

import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';
import '../../../data/local/service_images.dart';

class GoogleMeetLink extends StatelessWidget {
  const GoogleMeetLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AppText(
            text: 'Include Google meet link',
            size: 14,
            fontweight: FontWeight.w500),
        Switch(
          value: false,
          thumbColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.orange.withOpacity(.48);
            }
            return Appcolors.white; // Use the default color.
          }),
          trackOutlineColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.orange.withOpacity(.48);
            }
            return Appcolors.inActive; // Use the default color.
          }),
          onChanged: (value) {
            showDialog(
                context: context,
                builder: (context) {
                  final size = MediaQuery.sizeOf(context);
                  return AlertDialog(
                    backgroundColor: Appcolors.white,
                    contentPadding: EdgeInsets.zero,
                    content: AppshadowContainer(
                      height: size.height * 0.36,
                      radius: size.width * 0.05,
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.03,
                          vertical: size.width * 0.04),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(ServiceImages.google,
                              height: size.width * 0.18, fit: BoxFit.cover),
                          SizedBox(height: size.height * 0.015),
                          const AppText(
                              text: 'Connect Google Account',
                              fontweight: FontWeight.w500,
                              size: 20),
                          SizedBox(height: size.height * 0.015),
                          const AppText(
                              textalign: TextAlign.center,
                              text:
                                  'To be able to share a google meet link connect your google account to continue',
                              size: 14),
                          SizedBox(height: size.height * 0.03),
                          const Appbutton(label: 'Connect')
                        ],
                      ),
                    ),
                  );
                });
           
          },
          inactiveThumbColor: Appcolors.inActive,
          inactiveTrackColor: Appcolors.inActive,
        )
      ],
    );
  }
}
