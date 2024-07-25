import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key, required this.itemCount, this.mainAxisEvent = 288, required this.itemBuilder,
  });

  final int itemCount;
  final double mainAxisEvent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: 288,
      ),
      itemBuilder: itemBuilder,);
  }
}