import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/onboarding/data/model/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({super.key, required this.model});

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        SvgPicture.asset(model.image),
        const SizedBox(height: 20),
        SizedBox(
          height: 61,
          child: Text(
            model.title,
            textAlign: TextAlign.center,
            style: Styles.textStyle22,
          ),
        ),
        const SizedBox(height: 13),
        Text(
          model.subtitle,
          textAlign: TextAlign.center,
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
