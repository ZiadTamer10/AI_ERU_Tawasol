import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/announcement_card.dart';
import 'package:flutter/material.dart';

class AnnouncementDataSliverList extends StatelessWidget {
  const AnnouncementDataSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: AnnouncementCard(),
        );
      }),
    );
  }
}
