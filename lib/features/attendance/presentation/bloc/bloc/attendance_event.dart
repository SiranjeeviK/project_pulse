part of 'attendance_bloc.dart';

@immutable
sealed class AttendanceEvent {}

class MarkTheAttendance extends AttendanceEvent {
  final AttendanceParams attendanceParams;
  MarkTheAttendance({required this.attendanceParams});

  void fold(void Function(dynamic failure) param0,
      void Function(dynamic attendanceList) param1) {}
}

class GetAttendance extends AttendanceEvent {
  final String studentId;
  GetAttendance({required this.studentId});
}
