import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';

abstract class CourseRepo {
  Future<List<Course>> getStudentCourses();
  Future<List<Course>> getDoctorCourses();
  Future<List<CourseContent>> getAllCourseContent(String courseId);
  Future<List<CourseContent>> getDoctorCourseContent(String courseId);
  Future<List<CourseContent>> getAdminCourseContent(String courseId);
}
