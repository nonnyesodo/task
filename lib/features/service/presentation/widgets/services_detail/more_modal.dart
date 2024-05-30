import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
// import 'package:iconsax/iconsax.dart';

import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';
import 'delete_dialog.dart';

class MoreModalsheet extends StatelessWidget {
  const MoreModalsheet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const AppText(
            text: 'More',
            size: 16,
            color: Color(0XFF000000),
            fontweight: FontWeight.w500),
        AppshadowContainer(
          margin: EdgeInsets.all(size.width * 0.03),
          padding: EdgeInsets.all(size.width * 0.03),
          color: Appcolors.white,
          child: Column(
            children: [
              const IconWithTitle(
                  title: 'Share service link', icon: Iconsax.export_1_copy),
              const IconWithTitle(
                  icon: Iconsax.edit_2_copy, title: 'Update service'),
              IconWithTitle(
                  showDivider: false,
                  onTap: () {
                    Navigator.pop(context);
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (_) {
                          return DeleteServiceDialog(size: size);
                        });
                  },
                  titleColor: Appcolors.redColor,
                  iconColor: Appcolors.redColor,
                  icon: Iconsax.trash_copy,
                  title: 'Delete service'),
            ],
          ),
        )
      ],
    );
  }
}
