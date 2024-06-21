part of 'faculty_bloc.dart';

@immutable
sealed class FacultyState {}

final class FacultyInitial extends FacultyState {}

// Loading States
final class FacultyLoading extends FacultyState {}

final class FacultyListLoading extends FacultyLoading {}

// Failure States
final class FacultyFailure extends FacultyState {
  final String message;

  FacultyFailure({required this.message});
}

// Loaded States
final class FacultyLoaded extends FacultyState {
  final List<Faculty> data;

  FacultyLoaded({required this.data});
}
