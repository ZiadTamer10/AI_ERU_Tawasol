import 'package:ai_eru_tawasol/constants.dart';
import 'package:flutter/material.dart';

class AudienceTypeCard extends StatelessWidget {
  const AudienceTypeCard({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : const Color(0xFFF8FAFC),

            borderRadius: BorderRadius.circular(14),

            border: Border.all(
              color: isSelected ? kPrimaryColor : const Color(0xFFE2E8F0),
            ),
          ),

          child: Column(
            children: [
              Icon(
                icon,
                size: 24,
                color: isSelected ? Colors.white : const Color(0xFF64748B),
              ),

              const SizedBox(height: 6),

              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : const Color(0xFF64748B),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
