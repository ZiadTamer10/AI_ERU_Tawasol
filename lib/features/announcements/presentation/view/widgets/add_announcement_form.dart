import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/announcement_action_button.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/announcement_form_title.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/custom_announcement_text_field.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/target_audience_section.dart';
import 'package:flutter/material.dart';

class AddAnnouncementForm extends StatelessWidget {
  const AddAnnouncementForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AnnouncementFormTitle(),
          const CustomAnnouncementTextField(
            label: 'Title',
            hint: 'Enter announcement title',
          ),
          const SizedBox(height: 16),
          const CustomAnnouncementTextField(
            label: 'Details',
            hint: 'Write announcement details here...',
            maxLines: 5,
          ),
          const SizedBox(height: 24),
          TargetAudienceSection(),
          SizedBox(height: 40),
          AnnouncementActionButtons(
            onDiscard: () {
              Navigator.pop(context);
            },
            onPost: () {},
          ),
        ],
      ),
    );
  }
}
