import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TargetAudienceHeader extends StatelessWidget {
  const TargetAudienceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),

          decoration: BoxDecoration(
            color: const Color(0xFFEEF2FF),
            borderRadius: BorderRadius.circular(12),
          ),

          child: const Icon(
            Icons.people_alt_rounded,
            color: kPrimaryColor,
            size: 24,
          ),
        ),

        const SizedBox(width: 10),

        Text('Target Audience', style: Styles.textStyle22),
      ],
    );
  }
}
