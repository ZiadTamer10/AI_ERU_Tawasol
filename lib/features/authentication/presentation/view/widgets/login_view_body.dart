import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/terms_and_privacy_text.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 240),
        Text('Welcome', style: Styles.textStyle32),
        TermsAndPrivacyText(),
      ],
    );
  }
}
