import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/additional_pages_app_bar.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_about_me_header.dart';
import 'package:flutter/material.dart';

class OurMissionViewBody extends StatelessWidget {
  const OurMissionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AdditionalPagesAppBar(title: 'Our Mission'),
        SizedBox(height: 30),
        CustomAboutMeHeader(
          image: Placeholder(fallbackHeight: 130),
          title: 'Our Mission',
          paragraph:
              'To deliver smart solutions that simplify communication and enhance productivity.',
        ),
        SizedBox(height: 100),
        CustomAboutMeHeader(
          image: Placeholder(fallbackHeight: 130),
          title: 'Our Vision',
          paragraph:
              'To be the leading platform in the region for smart communication solutions.',
        ),
      ],
    );
  }
}
