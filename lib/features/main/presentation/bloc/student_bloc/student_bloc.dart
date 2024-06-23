import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';
import 'package:project_pulse/features/main/domain/usecases/students/get_all_students.dart';
import 'package:project_pulse/features/main/domain/usecases/students/get_all_students_by_class_code.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final GetAllStudents _getAllStudents;
  final GetAllStudentsByClassCode _getAllStudentsByClassCode;

  StudentBloc({
    required GetAllStudents getAllStudents,
    required GetAllStudentsByClassCode getAllStudentsByClassCode,
  })  : _getAllStudents = getAllStudents,
        _getAllStudentsByClassCode = getAllStudentsByClassCode,
        super(StudentInitial()) {
    on<StudentEvent>((_, emit) {
      emit(StudentLoading());
    });

    on<FetchAllStudents>(_onFetchAllStudents);
    on<FetchStudentsByClassCode>(_onFetchStudentsByClassCode);
  }

  void _onFetchAllStudents(
      FetchAllStudents event, Emitter<StudentState> emit) async {
    emit(StudentListLoading());
    final result = await _getAllStudents(NoParams());
    result.fold(
      (failure) => emit(StudentFailure(message: failure.message)),
      (classes) => emit(StudentListLoaded(data: classes)),
    );
  }

  void _onFetchStudentsByClassCode(
      FetchStudentsByClassCode event, Emitter<StudentState> emit) async {
    emit(StudentListLoading());
    final result = await _getAllStudentsByClassCode(
        StudentSearchParams(classCode: event.classCode));
    result.fold(
      (failure) => emit(StudentFailure(message: failure.message)),
      (classes) => emit(ClassStudentListLoaded(data: classes)),
    );
  }
}
