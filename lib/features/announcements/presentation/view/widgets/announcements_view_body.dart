import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/announcement_data_list_view.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/custom_app_bar.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class AnnouncementsViewBody extends StatelessWidget {
  const AnnouncementsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(height: 20),
          WelcomeText(),
          Divider(color: Color(0xffC4C4C4), thickness: 2),
          SizedBox(height: 20),
          AnnouncementDataListView(),
        ],
      ),
    );
  }
}
