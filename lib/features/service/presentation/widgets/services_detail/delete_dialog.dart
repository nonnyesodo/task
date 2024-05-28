import 'package:flutter/material.dart';

import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';

class DeleteServiceDialog extends StatelessWidget {
  const DeleteServiceDialog({
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
        radius: size.width * 0.05,
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        height: size.height * 0.3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppText(
                text: 'Delete service', size: 22, fontweight: FontWeight.w500),
            SizedBox(height: size.height * 0.01),
            const AppText(
                textalign: TextAlign.center,
                size: 14,
                text:
                    'Deleting an activity cannot be undone. Do you really want to go through with this action?'),
            SizedBox(height: size.height * 0.02),
            Appbutton(buttonColor: Appcolors.redColor, label: 'Yes, delete'),
            SizedBox(height: size.height * 0.02),
            Appbutton(
                onTap: () => Navigator.pop(context),
                buttonColor: Appcolors.inActive.withOpacity(0.3),
                labelColor: Appcolors.blackColor,
                label: 'Cancel')
          ],
        ),
      ),
    );
  }
}
