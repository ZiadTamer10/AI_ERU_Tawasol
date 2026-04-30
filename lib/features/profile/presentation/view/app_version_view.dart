import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/app_version_view_body.dart';
import 'package:flutter/material.dart';

class AppVersionView extends StatelessWidget {
  const AppVersionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: AppVersionViewBody()),
    );
  }
}
