import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NoAnnouncementData extends StatelessWidget {
  const NoAnnouncementData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('Timeline', style: Styles.textStyle24),
        ),
        Center(child: Image.asset('assets/images/no_announcement.png')),
        Center(
          child: Text(
            'No events scheduled for Today.\nExplore your Courses.',
            style: Styles.textStyle20,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
