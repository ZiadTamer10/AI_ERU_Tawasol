import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomMessage extends StatelessWidget {
  const CustomMessage({super.key, required this.text, required this.icon});

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xffD3E1FE),

          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          spacing: 20,
          children: [
            Padding(padding: const EdgeInsets.only(left: 16), child: icon),
            Text(
              text,
              style: Styles.textStyle18.copyWith(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
