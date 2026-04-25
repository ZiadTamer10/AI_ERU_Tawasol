import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:flutter/material.dart';

class LoginImages extends StatelessWidget {
  const LoginImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsData.logo, height: 90),
        Text(
          'AI Connect',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
        Image.asset(AssetsData.login),
      ],
    );
  }
}
