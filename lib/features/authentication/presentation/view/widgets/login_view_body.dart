import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/custom_button.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/custom_text_form_field.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/login_images.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/remember_me.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/selection_divider.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/terms_and_privacy_text.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 32),
            LoginImages(),
            Text('Welcome', style: Styles.textStyle32),
            const TermsAndPrivacyText(),
            const SizedBox(height: 20),
            const SectionDivider(),
            const SizedBox(height: 30),
            CustomTextFormField(
              controller: emailController,
              hintText: 'Email',
              onChanged: (_) {},
              prefixIcon: Icons.email_outlined,
            ),
            const SizedBox(height: 25),
            CustomTextFormField(
              controller: passwordController,
              hintText: 'Password',
              onChanged: (_) {},
              prefixIcon: Icons.lock_outline_rounded,
              obscureText: true,
            ),
            const SizedBox(height: 24),
            RememberMe(
              onChanged: (value) {
                rememberMe = value;
              },
            ),
            const SizedBox(height: 40),
            CustomButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print('login done');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
