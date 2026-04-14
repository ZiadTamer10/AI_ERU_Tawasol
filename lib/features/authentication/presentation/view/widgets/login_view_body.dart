import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Image.asset(AssetsData.logo, height: 200)]);
  }
}
