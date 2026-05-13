import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/presentation/manager/course_details_cubit/course_details_cubit.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/details/course_details_error_scaffold.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/details/course_details_loaded_scaffold.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/details/course_details_loading_scaffold.dart';

class CourseDetailsBody extends StatelessWidget {
  final CourseRole role;
  final Course course;

  const CourseDetailsBody({
    super.key,
    required this.role,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseDetailsCubit, CourseDetailsState>(
      builder: (context, state) {
        if (state is CourseDetailsLoading) {
          return CourseDetailsLoadingScaffold(course: course);
        }
        if (state is CourseDetailsError) {
          return CourseDetailsErrorScaffold(
            course: course,
            role: role,
            message: state.message,
          );
        }
        if (state is CourseDetailsLoaded) {
          return CourseDetailsLoadedScaffold(
            role: role,
            course: course,
            state: state,
          );
        }
        return CourseDetailsLoadingScaffold(course: course);
      },
    );
  }
}
