import 'package:ai_eru_tawasol/features/authentication/presentation/constants/auth_colors.dart';
import 'package:flutter/material.dart';

class AuthFieldFocusContainer extends StatelessWidget {
  const AuthFieldFocusContainer({
    super.key,
    required this.isFocused,
    required this.child,
  });

  final bool isFocused;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AuthColors.fieldBackground,
        boxShadow: isFocused
            ? [
                BoxShadow(
                  color: AuthColors.primary.withValues(alpha: 0.4),
                  blurRadius: 12,
                  spreadRadius: 1,
                ),
              ]
            : [],
      ),
      child: child,
    );
  }
}
