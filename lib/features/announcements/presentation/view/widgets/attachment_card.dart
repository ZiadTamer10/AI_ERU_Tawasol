import 'package:ai_eru_tawasol/core/utils/attachment_helper.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AttachmentCard extends StatelessWidget {
  const AttachmentCard({
    super.key,
    required this.type,
    required this.fileName,
    required this.size,
    this.url,
  });

  final String type;
  final String fileName;
  final String size;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
        border: Border.all(color: const Color(0xffC4C4C4)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          AttachmentHelper.buildPreviewWidget(type, url: url),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(fileName, style: Styles.textStyle18),
                Text(size, style: Styles.textStyle18),
              ],
            ),
          ),
          AttachmentHelper.buildActionButton(type, url: url),
        ],
      ),
    );
  }
}
