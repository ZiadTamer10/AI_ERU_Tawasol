import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureEmptyState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color accentColor;
  final Color iconBgColor;

  const FeatureEmptyState({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.accentColor,
    this.iconBgColor = const Color(0xffF0F4FF),
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                color: iconBgColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: accentColor.withValues(alpha: 0.15),
                  width: 2,
                ),
              ),
              child: Icon(icon, size: 40, color: accentColor),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: const Color(0xff1E293B),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 13,
                color: const Color(0xff64748B),
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
