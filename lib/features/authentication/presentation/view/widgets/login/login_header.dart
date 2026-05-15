import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/login/login_illustration.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/shared/auth_gradient_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 36),
        const LoginIllustration(),
        const SizedBox(height: 30),
        const AuthGradientTitle(
          text: 'Welcome Back',
          fontSize: 30,
          letterSpacing: -0.5,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Sign in to your AI Connect account',
          style: GoogleFonts.plusJakartaSans(
            color: Colors.white54,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
