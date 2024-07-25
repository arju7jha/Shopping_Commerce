import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key, required this.image, required this.title, required this.subtitle, required this.onPressed}) : super(key: key);

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [

              ///Image
              Image(image: AssetImage(image),
                width: THelperFunction.screenWidth() * 0.6 ,
              ),

              /// Title and Subtitle
              const SizedBox(height: TSizes.spaceBtwSections,),
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(subtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Button

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: onPressed, child: (
                    const Text(TTexts.tContinue)
                ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
