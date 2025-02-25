import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.padding = 0,
    this.radius = 400,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
  });

  final double? height, width;
  final double padding, radius;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
    );
  }
}
