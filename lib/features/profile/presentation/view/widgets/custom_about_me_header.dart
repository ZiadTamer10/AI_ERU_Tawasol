import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAboutMeHeader extends StatelessWidget {
  const CustomAboutMeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsData.logo, height: 130),
        const SizedBox(height: 10),
        Text('AI Connect', style: Styles.textStyle24.copyWith(fontSize: 30)),
        Text(
          'Version  1.0.0+1',
          style: Styles.textStyle18.copyWith(color: kSecondaryColor),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'We aim to provide the best experience and intelligent solutions that make your life easire.',
            style: Styles.textStyle18.copyWith(color: kSecondaryColor),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
