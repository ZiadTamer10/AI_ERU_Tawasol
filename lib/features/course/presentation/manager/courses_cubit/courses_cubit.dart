import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/data/repos/course_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit(this._repo) : super(CoursesInitial());

  final CourseRepo _repo;

  Future<void> loadForStudent() async {
    emit(CoursesLoading());
    try {
      final courses = await _repo.getStudentCourses();
      if (isClosed) return;
      emit(CoursesLoaded(courses: courses));
    } catch (e) {
      if (isClosed) return;
      emit(CoursesError(e.toString()));
    }
  }

  Future<void> loadForDoctor() async {
    emit(CoursesLoading());
    try {
      final courses = await _repo.getDoctorCourses();
      if (isClosed) return;
      emit(CoursesLoaded(courses: courses));
    } catch (e) {
      if (isClosed) return;
      emit(CoursesError(e.toString()));
    }
  }

  Future<void> loadForRole(CourseRole role) async {
    switch (role) {
      case CourseRole.student:
        return loadForStudent();
      case CourseRole.doctor:
        return loadForDoctor();
    }
  }

  Future<void> refresh(CourseRole role) => loadForRole(role);
}
