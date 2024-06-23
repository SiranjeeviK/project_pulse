import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/batch.dart';
import 'package:project_pulse/features/main/domain/entities/class.dart';
import 'package:project_pulse/features/main/domain/entities/course.dart';
import 'package:project_pulse/features/main/domain/entities/department.dart';
import 'package:project_pulse/features/main/domain/entities/faculty.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_batches.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_classes.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_courses.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_departments.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_faculties.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_students.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final GetAllBatches _getAllBatches;
  final GetAllClasses _getAllClasses;
  final GetAllCourses _getAllCourses;
  final GetAllDepartments _getAllDepartments;
  final GetAllFaculties _getAllFaculties;
  final GetAllStudents _getAllStudents;

  MainBloc(
      {required GetAllBatches getAllBatches,
      required GetAllClasses getAllClasses,
      required GetAllCourses getAllCourses,
      required GetAllDepartments getAllDepartments,
      required GetAllFaculties getAllFaculties,
      required GetAllStudents getAllStudents})
      : _getAllBatches = getAllBatches,
        _getAllClasses = getAllClasses,
        _getAllCourses = getAllCourses,
        _getAllDepartments = getAllDepartments,
        _getAllFaculties = getAllFaculties,
        _getAllStudents = getAllStudents,
        super(MainInitial()) {
    on<MainEvent>((_, emit) {
      emit(MainLoading());
    });
    on<FetchAllBatches>(_onFetchAllBatches);
    on<FetchAllDepartments>(_onFetchAllDepartments);
    on<FetchAllClasses>(_onFetchAllClasses);
    on<FetchAllCourses>(_onFetchAllCourses);
    on<FetchAllStudents>(_onFetchAllStudents);
    on<FetchAllFaculties>(_onFetchAllFaculties);
  }

  void _onFetchAllBatches(
      FetchAllBatches event, Emitter<MainState> emit) async {
    emit(MainBatchListLoading());
    final result = await _getAllBatches(NoParams());
    result.fold(
      (failure) => emit(MainFailure(message: failure.message)),
      (batches) => emit(MainBatchListLoaded(data: batches)),
    );
  }

  void _onFetchAllDepartments(
      FetchAllDepartments event, Emitter<MainState> emit) async {
    emit(MainDepartmentListLoading());
    final result = await _getAllDepartments(NoParams());
    result.fold(
      (failure) => emit(MainFailure(message: failure.message)),
      (departments) => emit(MainDepartmentListLoaded(data: departments)),
    );
  }

  void _onFetchAllClasses(
      FetchAllClasses event, Emitter<MainState> emit) async {
    emit(MainClassListLoading());
    final result = await _getAllClasses(NoParams());
    result.fold(
      (failure) => emit(MainFailure(message: failure.message)),
      (classes) => emit(MainClassListLoaded(data: classes)),
    );
  }

  void _onFetchAllCourses(
      FetchAllCourses event, Emitter<MainState> emit) async {
    emit(MainCourseListLoading());
    final result = await _getAllCourses(NoParams());
    result.fold(
      (failure) => emit(MainFailure(message: failure.message)),
      (courses) => emit(MainCourseListLoaded(data: courses)),
    );
  }

  void _onFetchAllStudents(
      FetchAllStudents event, Emitter<MainState> emit) async {
    emit(MainStudentListLoading());
    final result = await _getAllStudents(NoParams());
    result.fold((failure) => emit(MainFailure(message: failure.message)),
        (students) {
      emit(MainStudentListLoaded(data: students));
      print(students);
    });
  }

  void _onFetchAllFaculties(
      FetchAllFaculties event, Emitter<MainState> emit) async {
    emit(MainFacultyListLoading());
    final result = await _getAllFaculties(NoParams());
    result.fold(
      (failure) => emit(MainFailure(message: failure.message)),
      (faculties) => emit(MainFacultyListLoaded(data: faculties)),
    );
  }
}
