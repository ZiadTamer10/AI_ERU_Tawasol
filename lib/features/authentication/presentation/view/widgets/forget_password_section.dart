import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordSection extends StatelessWidget {
  const ForgetPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Forget Password');
      },
      child: Text(
        "Forgot password?",
        style: Styles.textStyle16.copyWith(color: kPrimaryColor),
      ),
    );
  }
}
