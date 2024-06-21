import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_students.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final GetAllStudents _getAllStudents;

  StudentBloc({
    required GetAllStudents getAllStudents,
  })  : _getAllStudents = getAllStudents,
        super(StudentInitial()) {
    on<StudentEvent>((_, emit) {
      emit(StudentLoading());
    });

    on<FetchAllStudents>(_onFetchAllStudents);
  }

  void _onFetchAllStudents(
      FetchAllStudents event, Emitter<StudentState> emit) async {
    emit(StudentListLoading());
    final result = await _getAllStudents(NoParams());
    result.fold(
      (failure) => emit(StudentFailure(message: failure.message)),
      (classes) => emit(StudentLoaded(data: classes)),
    );
  }
}
