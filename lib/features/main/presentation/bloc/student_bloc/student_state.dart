part of 'student_bloc.dart';

@immutable
sealed class StudentState {}

final class StudentInitial extends StudentState {}

// Loading States
final class StudentLoading extends StudentState {}

final class StudentListLoading extends StudentLoading {}

// Failure States
final class StudentFailure extends StudentState {
  final String message;

  StudentFailure({required this.message});
}

// Loaded States
final class StudentListLoaded extends StudentState {
  final List<Student> data;

  StudentListLoaded({required this.data});
}

final class StudentLoaded extends StudentState {
  final Student data;

  StudentLoaded({required this.data});
}

final class ClassStudentListLoaded extends StudentState {
  final List<Student> data;

  ClassStudentListLoaded({required this.data});
}
