import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/appcolors.dart';
import '../../../../../globalwidget/export.dart';
import '../../pages/service_detail.dart';
import 'delete_dialog.dart';

class MoreModalsheet extends StatelessWidget {
  const MoreModalsheet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const AppText(text: 'More', size: 16, fontweight: FontWeight.w500),
        AppshadowContainer(
          margin: EdgeInsets.all(size.width * 0.03),
          padding: EdgeInsets.all(size.width * 0.03),
          color: Appcolors.white,
          child: Column(
            children: [
              const IconWithTitle(
                  title: 'Share service link', icon: Icons.ios_share_outlined),
              const IconWithTitle(
                  icon: CupertinoIcons.pencil, title: 'Update service'),
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
                  icon: CupertinoIcons.delete_solid,
                  title: 'Delete service'),
            ],
          ),
        )
      ],
    );
  }
}
