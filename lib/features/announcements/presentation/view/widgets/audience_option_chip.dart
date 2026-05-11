import 'package:ai_eru_tawasol/constants.dart';
import 'package:flutter/material.dart';

class AudienceOptionChip extends StatelessWidget {
  const AudienceOptionChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),

        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),

        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFEEF2FF) : Colors.white,

          borderRadius: BorderRadius.circular(20),

          border: Border.all(
            color: isSelected ? kPrimaryColor : const Color(0xFFE2E8F0),
          ),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isSelected) ...[
              const Icon(Icons.check_rounded, size: 15, color: kPrimaryColor),

              const SizedBox(width: 4),
            ],

            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: isSelected ? kPrimaryColor : const Color(0xFF475569),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
