import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/announcement_card.dart';
import 'package:flutter/material.dart';

class AnnouncementData extends StatelessWidget {
  const AnnouncementData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'November 29, 2025',
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 10),
          AnnouncementCard(),
        ],
      ),
    );
  }
}
