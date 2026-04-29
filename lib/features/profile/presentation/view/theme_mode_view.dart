import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/theme_mode_view_body.dart';
import 'package:flutter/material.dart';

class ThemeModeView extends StatelessWidget {
  const ThemeModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: ThemeModeViewBody()),
    );
  }
}
