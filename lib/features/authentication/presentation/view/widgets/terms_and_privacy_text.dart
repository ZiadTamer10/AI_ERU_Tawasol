import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndPrivacyText extends StatelessWidget {
  const TermsAndPrivacyText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(color: Color(0xff6B5E5E), fontSize: 22),
        children: [
          const TextSpan(text: "By signing in you are agreeing our "),
          TextSpan(
            text: "Terms",
            style: const TextStyle(
              color: Color(0xff003096),
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("Terms clicked");
              },
          ),
          const TextSpan(text: " and "),
          TextSpan(
            text: "Privacy Policy",
            style: const TextStyle(
              color: Color(0xff003096),
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("Privacy clicked");
              },
          ),
        ],
      ),
    );
  }
}
