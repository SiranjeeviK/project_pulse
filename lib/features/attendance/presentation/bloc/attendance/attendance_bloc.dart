import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';
import 'package:project_pulse/features/attendance/domain/get_attendance_if_already_marked.dart';
import 'package:project_pulse/features/attendance/domain/usecases/mark_attendance.dart';

part 'attendance_event.dart';
part 'attendance_state.dart';

class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final MarkAttendance _markAttendance;
  final GetAttendanceIfAlreadyMarked _getAttendanceIfAlreadyMarked;
  AttendanceBloc({
    required MarkAttendance markAttendance,
    required GetAttendanceIfAlreadyMarked getAttendanceIfAlreadyMarked,
  })  : _markAttendance = markAttendance,
        _getAttendanceIfAlreadyMarked = getAttendanceIfAlreadyMarked,
        super(AttendanceInitial()) {
    on<AttendanceEvent>((_, emit) {
      emit(AttendanceLoading());
    });
    on<ResetAttendance>((_, emit) {
      AttendanceLoaded(attendanceList: const []);
      emit(AttendanceInitial());
    });
    on<GetAttendanceByDatePeriodMappingId>((event, emit) async {
      final result = await _getAttendanceIfAlreadyMarked(
          event.checkAttendanceAlreadyMarkedParams);
      result.fold(
        (failure) => emit(AttendanceError(message: failure.message)),
        (attendanceList) {
          if (attendanceList.isEmpty) {
            emit(AttendanceLoaded(attendanceList: attendanceList));
          } else {
            emit(AttendanceAlreadyMarked(attendanceList: attendanceList));
          }
        },
      );
    });
    on<MarkTheAttendance>((event, emit) async {
      final result = await _markAttendance(event.markAttendanceParams);
      result.fold(
        (failure) => emit(AttendanceError(message: failure.message)),
        (attendanceList) =>
            emit(AttendanceMarked(attendanceList: attendanceList)),
      );
    });
  }
}
