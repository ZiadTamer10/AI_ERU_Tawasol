import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/announcement_data.dart';
import 'package:flutter/material.dart';

class AnnouncementDataListView extends StatelessWidget {
  const AnnouncementDataListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5, // حط رقم مؤقت
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: AnnouncementData(),
        );
      },
    );
  }
}
