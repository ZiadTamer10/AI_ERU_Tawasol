import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
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
        const SizedBox(height: 20),
        CustomAboutMeHeader(
          image: Placeholder(fallbackHeight: 200),
          title: 'App Version',
          subTitile: '1.0.0+1',
          paragraph: 'You are using the latest version of\nAI Connect.',
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white70,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("What's New?", style: Styles.textStyle24),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text("• ", style: Styles.textStyle18),
                    Text(
                      " Performance improvements",
                      style: Styles.textStyle18.copyWith(
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text("• ", style: Styles.textStyle18),
                    Text(
                      " Bug fixes",
                      style: Styles.textStyle18.copyWith(
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text("• ", style: Styles.textStyle18),
                    Text(
                      " Better user experience",
                      style: Styles.textStyle18.copyWith(
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
