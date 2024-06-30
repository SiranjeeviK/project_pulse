part of 'student_bloc.dart';

@immutable
sealed class StudentEvent {}

final class FetchAllStudents extends StudentEvent {}

final class ResetStudents extends StudentEvent {}

final class FetchStudentByRegisterNo extends StudentEvent {
  final String registerNo;
  FetchStudentByRegisterNo(this.registerNo);
}

final class FetchStudentByRollNo extends StudentEvent {
  final String rollNo;
  FetchStudentByRollNo(this.rollNo);
}

final class FetchStudentsByClassCode extends StudentEvent {
  final String classCode;
  FetchStudentsByClassCode(this.classCode);
}



// final class FetchAllAttendance extends StudentEvent {}



