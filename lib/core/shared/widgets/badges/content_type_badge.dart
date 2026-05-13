import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Generic type badge used across announcement, course, and content details.
/// Accepts color/icon/label so it works with any enum (just pass the values).
class ContentTypeBadge extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final Color lightColor;

  const ContentTypeBadge({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
    required this.lightColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: lightColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: 0.25), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 11, color: color),
          const SizedBox(width: 4),
          Text(
            label,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 10.5,
              fontWeight: FontWeight.w700,
              color: color,
              letterSpacing: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
