import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/cousres/presentation/view/widgets/course_details_header.dart';
import 'package:flutter/material.dart';

class CourseDetailsViewBody extends StatelessWidget {
  const CourseDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          CourseDetailsHeader(),
          SizedBox(height: 10),
          const TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.center,
            indicatorColor: kPrimaryColor,
            labelColor: kPrimaryColor,
            unselectedLabelColor: Colors.grey,
            labelPadding: EdgeInsets.symmetric(horizontal: 16),
            labelStyle: Styles.textStyle16,
            tabs: [
              Tab(text: 'Announcements'),
              Tab(text: 'Materials'),
              Tab(text: 'Assignments'),
            ],
          ),

          const Expanded(
            child: TabBarView(
              children: [
                Center(child: Text('Announcements')),
                Center(child: Text('Materials')),
                Center(child: Text('Assignments')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
