import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/app_router.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordSection extends StatelessWidget {
  const ForgetPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kForgetPasswordView);
      },
      child: Text(
        "Forgot password?",
        style: Styles.textStyle16.copyWith(color: kPrimaryColor),
      ),
    );
  }
}
