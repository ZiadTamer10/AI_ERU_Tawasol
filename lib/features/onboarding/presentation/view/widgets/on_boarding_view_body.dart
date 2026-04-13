import 'package:ai_eru_tawasol/core/utils/app_router.dart';
import 'package:ai_eru_tawasol/features/onboarding/data/model/on_boarding_data.dart';
import 'package:ai_eru_tawasol/features/onboarding/presentation/view/widgets/on_boarding_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController controller = PageController();
  int currentIndex = 0;

  bool get isLastPage => currentIndex == onBoardingList.length - 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
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
                  child: const Text(
                    'SKIP',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            itemCount: onBoardingList.length,
            onPageChanged: (index) {
              setState(() => currentIndex = index);
            },
            itemBuilder: (context, index) {
              return OnBoardingItem(model: onBoardingList[index]);
            },
          ),
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: isLastPage ? 0 : 1,
          child: SmoothPageIndicator(
            controller: controller,
            count: onBoardingList.length,
            effect: const SlideEffect(
              spacing: 3,
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: Color(0xff003096),
            ),
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            isLastPage ? 'Sign In' : 'CONTINUE',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        SizedBox(height: 65),
      ],
    );
  }
}
