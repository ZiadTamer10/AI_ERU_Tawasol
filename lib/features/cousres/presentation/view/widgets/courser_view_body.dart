import 'package:ai_eru_tawasol/features/cousres/presentation/view/widgets/custom_courses_app_bar.dart';
import 'package:flutter/material.dart';

class CourserViewBody extends StatelessWidget {
  const CourserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCoursesAppBar(),
        SizedBox(height: 80),
        Divider(color: Color(0xffC4C4C4), thickness: 2),
      ],
    );
  }
}
