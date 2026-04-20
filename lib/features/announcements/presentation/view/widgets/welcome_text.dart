import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: Styles.textStyle22,
        children: [
          const TextSpan(text: 'Welcome '),
          TextSpan(
            text: ' Ziad',
            style: Styles.textStyle22.copyWith(color: Color(0xffC00000)),
          ),
          const TextSpan(text: ',\nHere is the latest Announcement!'),
        ],
      ),
    );
  }
}
