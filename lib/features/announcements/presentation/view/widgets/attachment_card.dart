import 'package:ai_eru_tawasol/core/utils/attachment_helper.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AttachmentCard extends StatelessWidget {
  const AttachmentCard({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xffF9F9F9),
        border: Border.all(color: Color(0xffC4C4C4)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: AttachmentHelper.getIcon(type),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('lecture4.pdf', style: Styles.textStyle18),
              Text('2.4 MB', style: Styles.textStyle18),
            ],
          ),
          Spacer(flex: 9),
          AttachmentHelper.getAction(type),
        ],
      ),
    );
  }
}
