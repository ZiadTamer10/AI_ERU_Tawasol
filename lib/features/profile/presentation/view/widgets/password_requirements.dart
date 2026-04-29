import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PasswordRequirements extends StatelessWidget {
  const PasswordRequirements({
    super.key,
    required this.text,
    required this.isValid,
  });

  final String text;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Icon(
            isValid ? Icons.check_circle : Icons.cancel,
            color: isValid ? Colors.green : Colors.red,
            size: 18,
          ),
          SizedBox(width: 8),
          Text(
            text,
            style: Styles.textStyle18.copyWith(
              color: Color.fromARGB(255, 116, 116, 120),
            ),
          ),
        ],
      ),
    );
  }
}
