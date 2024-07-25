import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class SignUpHeaders extends StatelessWidget {
  const SignUpHeaders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TTexts.signupTitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
