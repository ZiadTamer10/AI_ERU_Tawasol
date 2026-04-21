import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class NoAnnouncementData extends StatelessWidget {
  const NoAnnouncementData({super.key});

  @override
  Widget build(BuildContext context) {
    final String secondLine = isDoctor
        ? 'Add your Announcement.'
        : 'Explore your Courses.';
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
            'No events scheduled for Today.\n$secondLine',
            style: Styles.textStyle20,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
