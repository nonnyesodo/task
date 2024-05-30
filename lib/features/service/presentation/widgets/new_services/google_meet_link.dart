import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:iconsax/iconsax.dart';

import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';
import '../../../data/local/service_images.dart';

class GoogleMeetLink extends StatelessWidget {
  const GoogleMeetLink({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AppText(
            text: 'Include Google meet link',
            size: 14,
            fontweight: FontWeight.w500),
        GestureDetector(
            onTap: () => showDialog(
                context: context,
                builder: (context) {
                  return GoogleAccountDialog(size: size);
                }),
            child: AnimatedContainer(
              decoration: BoxDecoration(
                  color: const Color(0XFFE5E7EB),
                  borderRadius: BorderRadius.circular(size.width * 0.1)),
              duration: Duration(milliseconds: 200),
              width: size.width * 0.1,
              height: size.width * 0.06,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.circle,
                  color: Appcolors.white,
                ),
              ),
            ))
      ],
    );
  }
}

class GoogleAccountDialog extends StatelessWidget {
  const GoogleAccountDialog({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Appcolors.white,
      contentPadding: EdgeInsets.zero,
      content: AppshadowContainer(
        height: size.height * 0.36,
        radius: size.width * 0.05,
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.03, vertical: size.width * 0.04),
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
  }
}
