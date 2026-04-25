import 'package:ai_eru_tawasol/core/constants/attachment_types.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/attachment_card.dart';
import 'package:flutter/material.dart';

class AttachmentSection extends StatelessWidget {
  const AttachmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Attachments', style: Styles.textStyle22),
          SizedBox(height: 10),

          AttachmentCard(
            type: AttachmentTypes.pdf,
            fileName: 'lecture_image.png',
            size: '2.3 MB',
            url: 'https://i.ytimg.com/vi/lRdXqvpuVMk/hq720.jpg',
          ),
        ],
      ),
    );
  }
}
