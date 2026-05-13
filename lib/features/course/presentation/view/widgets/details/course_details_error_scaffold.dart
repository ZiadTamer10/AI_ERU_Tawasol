import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/core/shared/widgets/states/feature_error_state.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/presentation/constants/course_colors.dart';
import 'package:ai_eru_tawasol/features/course/presentation/manager/course_details_cubit/course_details_cubit.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/shared/white_back_button.dart';

class CourseDetailsErrorScaffold extends StatelessWidget {
  final Course course;
  final CourseRole role;
  final String message;

  const CourseDetailsErrorScaffold({
    super.key,
    required this.course,
    required this.role,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CourseColors.background,
      appBar: AppBar(
        backgroundColor: course.accentColor,
        leading: const WhiteBackButton(),
        title: Text(
          course.name,
          style: GoogleFonts.plusJakartaSans(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: FeatureErrorState(
        message: message,
        primaryColor: CourseColors.primary,
        onRetry: () => context.read<CourseDetailsCubit>().refresh(role, course),
      ),
    );
  }
}
