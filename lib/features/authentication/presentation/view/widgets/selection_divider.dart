import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SectionDivider extends StatelessWidget {
  const SectionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Divider(thickness: 2, color: Colors.grey, endIndent: 10),
          ),
          Text(
            "Login to Continue",
            style: Styles.textStyle22.copyWith(fontWeight: FontWeight.w400),
          ),
          Expanded(
            child: Divider(thickness: 2, color: Colors.grey, indent: 10),
          ),
        ],
      ),
    );
  }
}
