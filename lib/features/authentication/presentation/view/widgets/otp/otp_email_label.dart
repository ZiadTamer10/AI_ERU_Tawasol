import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpEmailLabel extends StatelessWidget {
  const OtpEmailLabel({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: GoogleFonts.plusJakartaSans(
            color: Colors.white54,
            fontSize: 14,
          ),
          children: [
            const TextSpan(text: 'Enter the 6-digit code sent to\n'),
            TextSpan(
              text: email,
              style: GoogleFonts.plusJakartaSans(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
