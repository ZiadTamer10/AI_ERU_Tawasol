import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/password_requirements.dart';
import 'package:flutter/material.dart';

class PasswordRequirementsList extends StatelessWidget {
  const PasswordRequirementsList({
    super.key,
    required this.hasMinLength,
    required this.hasNumber,
    required this.hasUpperCase,
  });

  final bool hasMinLength;
  final bool hasNumber;
  final bool hasUpperCase;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PasswordRequirements(
          text: 'At least 8 characters',
          isValid: hasMinLength,
        ),
        const SizedBox(height: 8),
        PasswordRequirements(text: 'Contains a number', isValid: hasNumber),
        const SizedBox(height: 8),
        PasswordRequirements(
          text: 'Contains uppercase letter',
          isValid: hasUpperCase,
        ),
      ],
    );
  }
}
