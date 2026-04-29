import 'package:flutter/material.dart';

class CustomChangePasswordTextFieldForm extends StatefulWidget {
  const CustomChangePasswordTextFieldForm({
    super.key,
    this.onChanged,
    this.controller,
  });

  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  State<CustomChangePasswordTextFieldForm> createState() =>
      _CustomChangePasswordTextFieldFormState();
}

class _CustomChangePasswordTextFieldFormState
    extends State<CustomChangePasswordTextFieldForm> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: isObscured,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isObscured = !isObscured;
            });
          },
          icon: Icon(
            isObscured ? Icons.visibility_off : Icons.visibility,
            size: 28,
            color: Color(0xff97989E),
          ),
        ),
        fillColor: Color(0xffF1F1F1),
        filled: true,
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
