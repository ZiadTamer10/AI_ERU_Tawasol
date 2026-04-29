import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/additional_pages_app_bar.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/language_options.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/theme_mode_tile.dart';
import 'package:flutter/material.dart';

class LanguageViewBody extends StatefulWidget {
  const LanguageViewBody({super.key});

  @override
  State<LanguageViewBody> createState() => _LanguageViewBodyState();
}

class _LanguageViewBodyState extends State<LanguageViewBody> {
  LanguageOptions selectedMode = LanguageOptions.english;

  void selectMode(LanguageOptions mode) {
    setState(() {
      selectedMode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AdditionalPagesAppBar(title: 'Language'),
        SizedBox(height: 40),
        ThemeModeTile(
          title: 'English',
          subtitle: 'English',
          langValue: LanguageOptions.english,
          gValue: selectedMode,
          onTap: () => selectMode(LanguageOptions.english),
        ),
        const SizedBox(height: 20),
        ThemeModeTile(
          title: 'العربية',
          subtitle: 'Arabic',
          langValue: LanguageOptions.arabic,
          gValue: selectedMode,
          onTap: () => selectMode(LanguageOptions.arabic),
        ),
      ],
    );
  }
}
