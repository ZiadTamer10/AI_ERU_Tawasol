import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/additional_pages_app_bar.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_about_me_header.dart';
import 'package:flutter/material.dart';

class AppVersionViewBody extends StatelessWidget {
  const AppVersionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AdditionalPagesAppBar(title: 'App Version'),
        SizedBox(height: 20),
        CustomAboutMeHeader(
          image: Placeholder(fallbackHeight: 200),
          title: 'App Version',
          subTitile: '1.0.0+1',
          paragraph: 'You are using the latest version of\nAI Connect.',
        ),
      ],
    );
  }
}
