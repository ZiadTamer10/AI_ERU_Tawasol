import 'package:ai_eru_tawasol/features/onboarding/presentation/view/widgets/on_boarding1_view_body.dart';
import 'package:flutter/material.dart';

class OnBoarding1View extends StatelessWidget {
  const OnBoarding1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: OnBoarding1ViewBody()),
    );
  }
}
