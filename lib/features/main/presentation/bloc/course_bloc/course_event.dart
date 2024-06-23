part of 'course_bloc.dart';

@immutable
sealed class CourseEvent {}

final class FetchAllCourses extends CourseEvent {}

final class FetchCoursesByClassCode extends CourseEvent {
  final String classCode;
  FetchCoursesByClassCode({required this.classCode});
}

// final class FetchAllAttendance extends CourseEvent {}



