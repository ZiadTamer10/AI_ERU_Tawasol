import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/add_announcement_form.dart';
import 'package:flutter/material.dart';

class AddAnnouncementButtomSheet extends StatelessWidget {
  const AddAnnouncementButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 600, child: AddAnnouncementForm());
  }
}
