import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key, required this.dividerName,
  });

  final String dividerName;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      children: [
        Flexible(
            child: Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.6,
              indent: 60,
              endIndent: 5,
            )),
        Text(
          dividerName,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.6,
              indent: 5,
              endIndent: 60,
            ))
      ],
    );
  }
}
