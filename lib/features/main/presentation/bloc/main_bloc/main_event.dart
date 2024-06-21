part of 'main_bloc.dart';

@immutable
sealed class MainEvent {}

final class FetchAllBatches extends MainEvent {}
final class FetchAllDepartments extends MainEvent {}
final class FetchAllClasses extends MainEvent {}
final class FetchAllCourses extends MainEvent {}
final class FetchAllStudents extends MainEvent {}
final class FetchAllFaculties extends MainEvent {}
// final class FetchAllAttendance extends MainEvent {}



