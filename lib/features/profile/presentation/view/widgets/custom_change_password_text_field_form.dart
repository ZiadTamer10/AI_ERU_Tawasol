import 'package:flutter/material.dart';

class CustomChangePasswordTextFieldForm extends StatelessWidget {
  const CustomChangePasswordTextFieldForm({
    super.key,
    required this.hintText,
    this.onChanged,
    this.obscureText = false,
    this.controller,
  });

  final String hintText;
  final Function(String)? onChanged;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: TextFormField(
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
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
        ),
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
