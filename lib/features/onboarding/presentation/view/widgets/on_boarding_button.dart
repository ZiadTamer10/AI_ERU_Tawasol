import 'package:ai_eru_tawasol/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
    required this.isLastPage,
    required this.controller,
  });

  final bool isLastPage;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (isLastPage) {
          GoRouter.of(context).push(AppRouter.kLoginView);
        } else {
          controller.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff003096),
        fixedSize: const Size(220, 57),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        isLastPage ? 'Sign In' : 'CONTINUE',
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
