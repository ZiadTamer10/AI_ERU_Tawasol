import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/announcement_form_title.dart';
import 'package:flutter/material.dart';

class AddAnnouncementForm extends StatelessWidget {
  const AddAnnouncementForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [AnnouncementFormTitle()]),
    );
  }
}
