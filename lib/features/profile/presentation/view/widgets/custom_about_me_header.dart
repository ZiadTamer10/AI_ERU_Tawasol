import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAboutMeHeader extends StatelessWidget {
  const CustomAboutMeHeader({
    super.key,
    required this.image,
    required this.title,
    this.subTitile,
    required this.paragraph,
  });

  final Widget image;
  final String title;
  final String? subTitile;
  final String paragraph;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        image,
        const SizedBox(height: 10),
        Text(title, style: Styles.textStyle24.copyWith(fontSize: 28)),
        if (subTitile != null)
          Text(
            subTitile!,
            style: Styles.textStyle18.copyWith(color: kSecondaryColor),
          ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            paragraph,
            style: Styles.textStyle18.copyWith(color: kSecondaryColor),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
