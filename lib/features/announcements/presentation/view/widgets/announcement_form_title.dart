import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AnnouncementFormTitle extends StatelessWidget {
  const AnnouncementFormTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        children: [
          const Text('New Announcement', style: Styles.textStyle22),
          Spacer(),
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close_rounded, color: Color(0xFF64748B)),
            style: IconButton.styleFrom(
              iconSize: 32,
              shape: const CircleBorder(),
              backgroundColor: Color(0xFFF1F5F9),
            ),
          ),
        ],
      ),
    );
  }
}
