import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/forget_password/forget_password_form.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/shared/auth_gradient_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const Icon(
            Icons.lock_reset_rounded,
            color: Color(0xff3D6FFF),
            size: 72,
          ),
          const SizedBox(height: 24),
          const AuthGradientTitle(
            text: 'Forgot Password?',
            fontSize: 28,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            "Enter your email and we'll send you a verification code",
            style: GoogleFonts.plusJakartaSans(
              color: Colors.white54,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          const ForgetPasswordForm(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
