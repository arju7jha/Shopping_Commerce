import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class SignUpTermAndCondition extends StatelessWidget {
  const SignUpTermAndCondition({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width:24, height: 24, child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: TTexts.iAgreeTo,style: Theme.of(context).textTheme.bodySmall,),
                  TextSpan(text: TTexts.privacyPolicy,style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary,
                  )),
                  TextSpan(text: TTexts.and,style: Theme.of(context).textTheme.bodySmall,),
                  TextSpan(text: TTexts.termsOfUse,style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary,
                  )),
                ]
            )
        ),
      ],
    );
  }
}

