part of 'department_bloc.dart';

@immutable
sealed class DepartmentState {}

final class DepartmentInitial extends DepartmentState {}

// Loading States
final class DepartmentLoading extends DepartmentState {}

final class DepartmentListLoading extends DepartmentLoading {}

// Failure States
final class DepartmentFailure extends DepartmentState {
  final String message;

  DepartmentFailure({required this.message});
}

// Loaded States
final class DepartmentLoaded extends DepartmentState {
  final List<Department> data;

  DepartmentLoaded({required this.data});
}
