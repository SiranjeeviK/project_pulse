import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'attendance_event.dart';
part 'attendance_state.dart';

class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  AttendanceBloc() : super(AttendanceInitial()) {
    on<AttendanceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
