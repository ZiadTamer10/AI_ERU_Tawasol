import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/custom_button.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordViewBody extends StatefulWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    @override
    void dispose() {
      emailController.dispose();
      super.dispose();
    }

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          const Text(
            "Forgot Password",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              "Enter your university email and we will send you a link to reset your password.",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          const SizedBox(height: 30),
          CustomTextFormField(hintText: 'Email'),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: CustomButton(text: 'Send Reset Link', onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
