import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAnnouncementDetailsAppBar extends StatelessWidget {
  const CustomAnnouncementDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Announcement Details', style: Styles.textStyle22),
      centerTitle: true,
    );
  }
}
