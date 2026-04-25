import 'package:ai_eru_tawasol/features/cousres/presentation/view/widgets/course_card.dart';
import 'package:ai_eru_tawasol/features/cousres/presentation/view/widgets/custom_courses_app_bar.dart';
import 'package:flutter/material.dart';

class CoursesViewBody extends StatelessWidget {
  const CoursesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomCoursesAppBar(),
            SizedBox(height: 10),
            Divider(color: Color(0xffC4C4C4), thickness: 2),
            SizedBox(height: 30),
            CourseCard(),
          ],
        ),
      ),
    );
  }
}
