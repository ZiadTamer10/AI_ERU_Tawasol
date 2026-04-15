import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/custom_button.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/custom_text_form_field.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/remember_me.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/selection_divider.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/terms_and_privacy_text.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 240),
          Text('Welcome', style: Styles.textStyle32),
          TermsAndPrivacyText(),
          SizedBox(height: 20),
          SectionDivider(),
          SizedBox(height: 56),
          CustomTextFormField(
            hintText: 'Email',
            onChanged: (String email) {},
            prefixIcon: Icons.email_outlined,
          ),
          SizedBox(height: 25),
          CustomTextFormField(
            hintText: 'Password',
            onChanged: (String password) {},
            prefixIcon: Icons.lock_outline_rounded,
            obscureText: true,
          ),
          SizedBox(height: 24),
          RememberMe(onChanged: (value) {}),
          SizedBox(height: 40),
          CustomButton(onPressed: () {}),
        ],
      ),
    );
  }
}
