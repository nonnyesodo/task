import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../globalwidget/export.dart';

class PreviewLinkAndShareLink extends StatelessWidget {
  const PreviewLinkAndShareLink({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContainerWithIconAndLabel(
            size: size, label: "Preview link", icon: Icons.visibility_outlined),
        ContainerWithIconAndLabel(
            size: size, label: "Share link", icon: CupertinoIcons.share),
      ],
    );
  }
}
