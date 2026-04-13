import 'package:ai_eru_tawasol/features/onboarding/data/model/on_boarding_data.dart';
import 'package:ai_eru_tawasol/features/onboarding/presentation/view/widgets/on_boarding_button.dart';
import 'package:ai_eru_tawasol/features/onboarding/presentation/view/widgets/on_boarding_item.dart';
import 'package:ai_eru_tawasol/features/onboarding/presentation/view/widgets/skip_button.dart';
import 'package:flutter/material.dart';
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
        SkipButton(isLastPage: isLastPage, controller: controller),
        Expanded(
          child: PageView.builder(
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
        if (!isLastPage)
          SmoothPageIndicator(
            controller: controller,
            count: onBoardingList.length,
            effect: const SlideEffect(
              spacing: 3,
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: Color(0xff003096),
            ),
          )
        else
          const SizedBox.shrink(),
        const SizedBox(height: 50),
        OnBoardingButton(isLastPage: isLastPage, controller: controller),
        const SizedBox(height: 65),
      ],
    );
  }
}
