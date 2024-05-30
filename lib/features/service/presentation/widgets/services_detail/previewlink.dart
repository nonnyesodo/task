import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
// import 'package:iconsax/iconsax.dart';

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
            size: size, label: "Preview link", icon: Iconsax.eye_copy),
        ContainerWithIconAndLabel(
            size: size, label: "Share link", icon: Iconsax.export_1_copy),
      ],
    );
  }
}
