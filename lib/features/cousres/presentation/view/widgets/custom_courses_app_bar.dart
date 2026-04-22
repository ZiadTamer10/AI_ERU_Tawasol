import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomCoursesAppBar extends StatelessWidget {
  const CustomCoursesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
      child: Text('Courses', style: Styles.textStyle36),
    );
  }
}
