import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/attachment_section.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/custom_announcement_deetails_app_bar.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/letter_section.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/submission_section.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/uploaded_section.dart';
import 'package:flutter/material.dart';

class AnnouncementDetailsViewBody extends StatelessWidget {
  const AnnouncementDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final String type = 'assignment'; // lecture / assignment / quiz
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAnnouncementDetailsAppBar(),
          const SizedBox(height: 20),
          const UploadedSection(),
          const SizedBox(height: 30),
          const LetterSection(),
          const SizedBox(height: 30),

          if (type != 'quiz') const AttachmentSection(),
          if (type == 'assignment') const SubmissionSection(),
        ],
      ),
    );
  }
}
