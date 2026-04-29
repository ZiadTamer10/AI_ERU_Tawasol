import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_change_password_text_field_form.dart';
import 'package:flutter/material.dart';

class CustomPasswordSection extends StatelessWidget {
  const CustomPasswordSection({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
          ),
          CustomChangePasswordTextFieldForm(),
        ],
      ),
    );
  }
}
