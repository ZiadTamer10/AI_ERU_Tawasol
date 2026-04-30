import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/our_mission_view_body.dart';
import 'package:flutter/material.dart';

class OurMissionView extends StatelessWidget {
  const OurMissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: OurMissionViewBody()),
    );
  }
}
