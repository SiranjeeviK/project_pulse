part of 'attendance_bloc.dart';

@immutable
sealed class AttendanceEvent {}

class MarkTheAttendance extends AttendanceEvent {
  final MarkAttendanceParams markAttendanceParams;
  MarkTheAttendance({required this.markAttendanceParams});

  // void fold(void Function(dynamic failure) param0,
  //     void Function(dynamic attendanceList) param1) {}
}

class GetAttendance extends AttendanceEvent {
  final String studentId;
  GetAttendance({required this.studentId});
}

class GetAttendanceByDatePeriodMappingId extends AttendanceEvent {
  final CheckAttendanceAlreadyMarkedParams checkAttendanceAlreadyMarkedParams;
  GetAttendanceByDatePeriodMappingId(
      {required this.checkAttendanceAlreadyMarkedParams});
}

class ResetAttendance extends AttendanceEvent {}