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
    return SingleChildScrollView(
      child: const Column(
        children: [
          CustomAnnouncementDetailsAppBar(),
          SizedBox(height: 20),
          UploadedSection(),
          SizedBox(height: 30),
          LetterSection(),
          SizedBox(height: 30),
          AttachmentSection(),
          SizedBox(height: 20),
          SubmissionSection(),
        ],
      ),
    );
  }
}
