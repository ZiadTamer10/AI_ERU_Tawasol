import 'package:ai_eru_tawasol/features/cousres/presentation/view/widgets/course_card.dart';
import 'package:flutter/material.dart';

class CoursesListView extends StatelessWidget {
  const CoursesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, // مهم
      physics: NeverScrollableScrollPhysics(), // مهم
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: CourseCard(),
        );
      },
    );
  }
}
