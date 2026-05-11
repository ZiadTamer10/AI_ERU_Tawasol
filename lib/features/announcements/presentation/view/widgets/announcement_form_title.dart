import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AnnouncementFormTitle extends StatelessWidget {
  const AnnouncementFormTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 16,
            left: 16,
            top: 25,
            bottom: 25,
          ),
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
        ),
        const Divider(height: 1, color: Color(0xFFF1F5F9)),
        SizedBox(height: 20),
      ],
    );
  }
}
