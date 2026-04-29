import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/additional_pages_app_bar.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_password_section.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/password_requirements.dart';
import 'package:flutter/material.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AdditionalPagesAppBar(title: 'Change Password'),
          SizedBox(height: 40),
          CustomPasswordSection(title: 'Current Password'),
          SizedBox(height: 30),
          CustomPasswordSection(title: 'New Password'),
          SizedBox(height: 30),
          CustomPasswordSection(title: 'Confirm New Password'),
          SizedBox(height: 30),
          PasswordRequirements(text: 'At least 8 characters', isValid: true),
          SizedBox(height: 30),
          PasswordRequirements(text: 'Contains a number', isValid: false),
          SizedBox(height: 30),
          PasswordRequirements(
            text: 'Contains uppercase letter',
            isValid: true,
          ),
        ],
      ),
    );
  }
}
