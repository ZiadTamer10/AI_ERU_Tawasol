import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AudienceEveryoneInfo extends StatelessWidget {
  const AudienceEveryoneInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),

      decoration: BoxDecoration(
        color: const Color(0xFFF0FDF4),
        borderRadius: BorderRadius.circular(14),

        border: Border.all(color: const Color(0xFFBBF7D0), width: 1.5),
      ),

      child: Row(
        children: [
          const Icon(
            Icons.check_circle_outline_rounded,
            color: Color(0xFF16A34A),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              'Visible to all students across all departments',

              style: Styles.textStyle16.copyWith(
                color: const Color(0xFF16A34A),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
