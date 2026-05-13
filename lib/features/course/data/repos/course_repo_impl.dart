import 'package:ai_eru_tawasol/features/course/data/mock/course_mock_data.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/data/repos/course_repo.dart';

class CourseRepoImpl implements CourseRepo {
  static const _delay = Duration(milliseconds: 800);

  @override
  Future<List<Course>> getStudentCourses() async {
    await Future.delayed(_delay);
    return mockStudentCourses;
  }

  @override
  Future<List<Course>> getDoctorCourses() async {
    await Future.delayed(_delay);
    return mockDoctorCourses;
  }

  @override
  Future<List<CourseContent>> getAllCourseContent(String courseId) async {
    await Future.delayed(_delay);
    return mockCourseContentMap[courseId] ?? [];
  }

  @override
  Future<List<CourseContent>> getDoctorCourseContent(String courseId) async {
    await Future.delayed(_delay);
    final all = mockCourseContentMap[courseId] ?? [];
    return all.where((c) => !c.isFromAdmin).toList();
  }

  @override
  Future<List<CourseContent>> getAdminCourseContent(String courseId) async {
    await Future.delayed(_delay);
    final all = mockCourseContentMap[courseId] ?? [];
    return all.where((c) => c.isFromAdmin).toList();
  }
}
