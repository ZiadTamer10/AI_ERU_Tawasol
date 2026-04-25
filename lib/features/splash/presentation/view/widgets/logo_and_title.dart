import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class LogoAndTitle extends StatelessWidget {
  const LogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo),
        Stack(
          children: [
            Text(
              'AI Connect',
              style: TextStyle(
                fontSize: 47,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 6
                  ..color = Colors.black,
                shadows: const [
                  Shadow(
                    offset: Offset(4, 4),
                    blurRadius: 10,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            Text(
              'AI Connect',
              style: TextStyle(
                fontSize: 46,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFDE992),
                shadows: const [
                  Shadow(
                    offset: Offset(4, 4),
                    blurRadius: 10,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          'EGYPTIAN RUSSIAN UNIVERSITY',
          style: Styles.textStyle14.copyWith(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
