import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/announcement_form_title.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/custom_announcement_text_field.dart';
import 'package:flutter/material.dart';

class AddAnnouncementForm extends StatelessWidget {
  const AddAnnouncementForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AnnouncementFormTitle(),
          CustomAnnouncementTextField(
            label: 'Title',
            hint: 'Enter announcement title',
          ),
          SizedBox(height: 20),
          CustomAnnouncementTextField(
            label: 'Details',
            hint: 'Write announcement details here...',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
