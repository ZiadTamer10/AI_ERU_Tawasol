import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/onboarding/data/model/on_boarding_data.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.isLastPage,
    required this.controller,
  });

  final bool isLastPage;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22, top: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: isLastPage ? 0 : 1,
            child: ElevatedButton(
              onPressed: isLastPage
                  ? null
                  : () {
                      controller.animateToPage(
                        onBoardingList.length - 1,
                        duration: const Duration(milliseconds: 1),
                        curve: Curves.easeInOut,
                      );
                    },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(25, 30),
                backgroundColor: const Color(0xffD9D9D9),
                elevation: 0,
              ),
              child: Text(
                'SKIP',
                style: Styles.textStyle14.copyWith(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
