import 'package:ai_eru_tawasol/features/onboarding/presentation/view/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff000D24),
      body: OnBoardingViewBody(),
    );
  }
}
