part of 'main_bloc.dart';

@immutable
sealed class MainState {}

final class MainInitial extends MainState {}

// Loading States
final class MainLoading extends MainState {}

final class MainBatchListLoading extends MainLoading {}

final class MainDepartmentListLoading extends MainLoading {}

final class MainClassListLoading extends MainLoading {}

final class MainCourseListLoading extends MainLoading {}

final class MainStudentListLoading extends MainLoading {}

final class MainFacultyListLoading extends MainLoading {}

// Failure States
final class MainFailure extends MainState {
  final String message;

  MainFailure({required this.message});
}

// Loaded States
final class MainLoaded<T> extends MainState {
  final T data;

  MainLoaded({required this.data});
}

// Batch States
final class MainBatchListLoaded extends MainLoaded<List<Batch>> {
  MainBatchListLoaded({required super.data});
}

// Department States
final class MainDepartmentListLoaded extends MainLoaded<List<Department>> {
  MainDepartmentListLoaded({required super.data});
}

// Class States
final class MainClassListLoaded extends MainLoaded<List<Class>> {
  MainClassListLoaded({required super.data});
}

// Course States
final class MainCourseListLoaded extends MainLoaded<List<Course>> {
  MainCourseListLoaded({required super.data});
}

// Student States
final class MainStudentListLoaded extends MainLoaded<List<Student>> {
  MainStudentListLoaded({required super.data});
}

// Faculty States
final class MainFacultyListLoaded extends MainLoaded<List<Faculty>> {
  MainFacultyListLoaded({required super.data});
}
