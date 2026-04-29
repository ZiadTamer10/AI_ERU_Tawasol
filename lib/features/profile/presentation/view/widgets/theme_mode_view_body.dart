import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/additional_pages_app_bar.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/theme_mode_options.dart';
import 'package:flutter/material.dart';

class ThemeModeViewBody extends StatefulWidget {
  const ThemeModeViewBody({super.key});

  @override
  State<ThemeModeViewBody> createState() => _ThemeModeViewBodyState();
}

class _ThemeModeViewBodyState extends State<ThemeModeViewBody> {
  ThemeModeOptions selectedMode = ThemeModeOptions.light;

  @override
  Widget build(BuildContext context) {
    return Column(children: [AdditionalPagesAppBar(title: 'Theme Mode')]);
  }
}
