part of 'attendance_report_bloc.dart';

@immutable
sealed class AttendanceReportEvent {}

class FetchStudentAttendanceUsingDate extends AttendanceReportEvent {
  final String rollNo;
  final DateTime date;

  FetchStudentAttendanceUsingDate(this.rollNo, this.date);
}

