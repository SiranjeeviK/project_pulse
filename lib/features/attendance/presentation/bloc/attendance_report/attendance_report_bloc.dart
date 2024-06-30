import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';
import 'package:project_pulse/features/attendance/domain/usecases/get_student_attendance_using_date.dart';

part 'attendance_report_event.dart';
part 'attendance_report_state.dart';

class AttendanceReportBloc
    extends Bloc<AttendanceReportEvent, AttendanceReportState> {
  final GetStudentAttendanceUsingDate _getStudentAttendanceUsingDate;
  AttendanceReportBloc({
    required GetStudentAttendanceUsingDate getStudentAttendanceUsingDate,
  })  : _getStudentAttendanceUsingDate = getStudentAttendanceUsingDate,
        super(AttendanceReportInitial()) {
    on<AttendanceReportEvent>((_, emit) {
      emit(AttendanceReportLoading());
    });
    on<FetchStudentAttendanceUsingDate>((event, emit) async {
      final result = await _getStudentAttendanceUsingDate(
          GetStudentAttendanceUsingDateParams(
              rollNo: event.rollNo, date: event.date));
      result.fold(
        (failure) => emit(AttendanceReportFailure(failure.message)),
        (attendanceList) => emit(AttendanceReportLoaded(attendanceList)),
      );
    });
  }
}
