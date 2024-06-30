part of 'attendance_report_bloc.dart';

@immutable
sealed class AttendanceReportState {}

final class AttendanceReportInitial extends AttendanceReportState {}

final class AttendanceReportLoading extends AttendanceReportState {}

final class AttendanceReportLoaded extends AttendanceReportState {
  final List<Attendance> attendanceList;

  AttendanceReportLoaded(this.attendanceList);
}

final class AttendanceReportFailure extends AttendanceReportState {
  final String message;

  AttendanceReportFailure(this.message);
}


