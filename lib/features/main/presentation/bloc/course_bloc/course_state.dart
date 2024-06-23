part of 'course_bloc.dart';

@immutable
sealed class CourseState {}

final class CourseInitial extends CourseState {}

// Loading States
final class CourseLoading extends CourseState {}

final class CourseListLoading extends CourseLoading {}

// Failure States
final class CourseFailure extends CourseState {
  final String message;

  CourseFailure({required this.message});
}

// Loaded States
final class CourseLoaded extends CourseState {
  final List<Course> data;

  CourseLoaded({required this.data});
}

final class CourseListByClassCodeLoaded extends CourseState {
  final String classCode;
  final List<Course> data;

  CourseListByClassCodeLoaded({required this.classCode, required this.data});
}
