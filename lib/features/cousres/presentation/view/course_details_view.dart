import 'package:ai_eru_tawasol/features/cousres/presentation/view/widgets/course_details_view_body.dart';
import 'package:flutter/material.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: CourseDetailsViewBody()),
    );
  }
}
