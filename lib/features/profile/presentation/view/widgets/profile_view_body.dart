import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/account_section.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_profile_app_bar.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/log_out_button.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/preferences_section.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/profile_section.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/support_section.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          CustomProfileAppBar(),
          SizedBox(height: 20),
          ProfileSection(),
          SizedBox(height: 20),
          AccountSection(),
          SizedBox(height: 30),
          PreferencesSection(),
          SizedBox(height: 20),
          SupportSection(),
          SizedBox(height: 30),
          LogOutButton(onPressed: () {}),
        ],
      ),
    );
  }
}
