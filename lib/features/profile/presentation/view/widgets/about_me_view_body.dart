import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/additional_pages_app_bar.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_about_me_header.dart';
import 'package:flutter/material.dart';

class AboutMeViewBody extends StatelessWidget {
  const AboutMeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AdditionalPagesAppBar(title: 'About Me'),
        const SizedBox(height: 40),
        CustomAboutMeHeader(),
      ],
    );
  }
}
