import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/additional_pages_app_bar.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_change_password_text_field_form.dart';
import 'package:flutter/material.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AdditionalPagesAppBar(title: 'Change Password'),
        SizedBox(height: 50),
        CustomChangePasswordTextFieldForm(hintText: 'Current Password'),
        SizedBox(height: 50),
        CustomChangePasswordTextFieldForm(hintText: 'zi9ad4ta9mer'),
        SizedBox(height: 50),
        CustomChangePasswordTextFieldForm(hintText: 'Confirm New Password'),
      ],
    );
  }
}
