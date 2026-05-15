import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthGradientTitle extends StatelessWidget {
  const AuthGradientTitle({
    super.key,
    required this.text,
    this.fontSize = 26,
    this.letterSpacing = -0.4,
    this.textAlign,
  });

  final String text;
  final double fontSize;
  final double letterSpacing;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Colors.white, Color(0xffA8C8FF)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(bounds),
      child: Text(
        text,
        textAlign: textAlign,
        style: GoogleFonts.plusJakartaSans(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          letterSpacing: letterSpacing,
          color: Colors.white,
        ),
      ),
    );
  }
}
