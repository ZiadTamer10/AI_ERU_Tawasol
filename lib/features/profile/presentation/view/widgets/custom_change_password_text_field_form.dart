import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomChangePasswordTextFieldForm extends StatelessWidget {
  const CustomChangePasswordTextFieldForm({
    super.key,
    this.onChanged,
    this.obscureText = false,
    this.controller,
  });

  final Function(String)? onChanged;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.visibility, size: 28, color: Color(0xff97989E)),
        ),
        fillColor: Color(0xffF1F1F1),
        filled: true,
        hintText: '********',
        hintStyle: Styles.textStyle18,
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffF1F1F1), width: 2),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
