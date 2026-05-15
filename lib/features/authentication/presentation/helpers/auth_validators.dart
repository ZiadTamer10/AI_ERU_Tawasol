import 'package:flutter/material.dart';

abstract class AuthValidators {
  static String? email(String? v) {
    if (v == null || v.trim().isEmpty) return 'Please enter your email';
    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    if (!emailRegex.hasMatch(v.trim())) return 'Please enter a valid email';
    return null;
  }

  static String? password(String? v) {
    if (v == null || v.isEmpty) return 'Please enter your password';
    if (v.length < 6) return 'Password must be at least 6 characters';
    return null;
  }

  static String? Function(String?) confirmPassword(
    TextEditingController passwordCtrl,
  ) {
    return (v) {
      if (v == null || v.isEmpty) return 'Please confirm your password';
      if (v != passwordCtrl.text) return 'Passwords do not match';
      return null;
    };
  }
}
