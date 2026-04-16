import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.obscureText = false,
    this.prefixIcon,
    this.controller,
  });

  final String hintText;
  final Function(String)? onChanged;
  final bool obscureText;
  final IconData? prefixIcon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Field is required';
          }
          if (hintText == 'Email') {
            final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
            if (!emailRegex.hasMatch(value)) {
              return 'Enter valid email';
            }
          }
          if (hintText == 'Password' && value.length < 6) {
            return 'Password must be at least 6 characters';
          }
          return null;
        },
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: prefixIcon != null
              ? Icon(prefixIcon, size: 28, color: Color(0xffC4C4C4))
              : null,
          hint: buildHintText(),
          fillColor: Color(0xffF9F9F9),
          filled: true,
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
        ),
      ),
    );
  }

  Opacity buildHintText() {
    return Opacity(
      opacity: 0.8,
      child: Text(hintText, style: Styles.textStyle18),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffC4C4C4), width: 2),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
