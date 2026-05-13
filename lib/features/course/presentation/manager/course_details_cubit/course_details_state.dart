part of 'course_details_cubit.dart';

sealed class CourseDetailsState extends Equatable {
  const CourseDetailsState();

  @override
  List<Object?> get props => [];
}

final class CourseDetailsInitial extends CourseDetailsState {}

final class CourseDetailsLoading extends CourseDetailsState {}

final class CourseDetailsError extends CourseDetailsState {
  final String message;

  const CourseDetailsError(this.message);

  @override
  List<Object?> get props => [message];
}

final class CourseDetailsLoaded extends CourseDetailsState {
  final Course course;
  final List<CourseContent> content;
  final ContentType? activeFilter;

  const CourseDetailsLoaded({
    required this.course,
    required this.content,
    this.activeFilter,
  });

  List<CourseContent> get filteredContent {
    if (activeFilter == null) return content;
    return content.where((c) => c.type == activeFilter).toList();
  }

  @override
  List<Object?> get props => [course, content, activeFilter];

  CourseDetailsLoaded copyWith({
    Course? course,
    List<CourseContent>? content,
    ContentType? activeFilter,
    bool clearFilter = false,
  }) {
    return CourseDetailsLoaded(
      course: course ?? this.course,
      content: content ?? this.content,
      activeFilter: clearFilter ? null : (activeFilter ?? this.activeFilter),
    );
  }
}
