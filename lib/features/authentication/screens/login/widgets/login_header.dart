import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class loginTitleLogo extends StatelessWidget {
  const loginTitleLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? TImages.lightAppLogo : TImages.darkAppLogo),
        ),
        Text(TTexts.loginTittle,
            style: Theme.of(context).textTheme.headlineMedium),
        Text(TTexts.loginSubTittle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
