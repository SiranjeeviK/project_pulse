import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';
import 'package:project_pulse/features/attendance/domain/usecases/mark_attendance.dart';

part 'attendance_event.dart';
part 'attendance_state.dart';

class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final MarkAttendance _markAttendance;
  AttendanceBloc({
    required MarkAttendance markAttendance,
  })  : _markAttendance = markAttendance,
        super(AttendanceInitial()) {
    on<AttendanceEvent>((_, emit) {
      emit(AttendanceLoading());
    });
    on<MarkTheAttendance>((event, emit) async {
      final result = await _markAttendance(event.markAttendanceParams);
      result.fold(
        (failure) => emit(AttendanceError(message: failure.message)),
        (attendanceList) =>
            emit(AttendanceLoaded(attendanceList: attendanceList)),
      );
    });
  }
}
