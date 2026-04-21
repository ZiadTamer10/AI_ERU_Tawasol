import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/add_announcement_buttom_sheet.dart';
import 'package:flutter/material.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      backgroundColor: kPrimaryColor,
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return AddAnnouncementButtomSheet();
          },
        );
      },
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}
