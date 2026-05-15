import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginCardBottomStrip extends StatelessWidget {
  const LoginCardBottomStrip({
    super.key,
    required this.height,
    required this.cardWidth,
  });

  final double height;
  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    final hPad = cardWidth * 0.053;
    final largeFontSize = (cardWidth * 0.037).clamp(9.0, 13.0);
    final smallFontSize = (cardWidth * 0.030).clamp(7.0, 10.0);

    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.4),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
      padding: EdgeInsets.symmetric(horizontal: hPad),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'AI CONNECT',
            style: GoogleFonts.plusJakartaSans(
              color: Colors.white,
              fontSize: largeFontSize,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
          Text(
            'SMART CAMPUS · ERU',
            style: GoogleFonts.plusJakartaSans(
              color: Colors.white54,
              fontSize: smallFontSize,
              letterSpacing: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
