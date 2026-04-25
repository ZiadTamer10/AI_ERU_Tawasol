import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/submission_data.dart';
import 'package:flutter/material.dart';

class SubmissionSection extends StatelessWidget {
  const SubmissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your Submission', style: Styles.textStyle22),
          SizedBox(height: 10),
          SubmissionData(),
        ],
      ),
    );
  }
}
