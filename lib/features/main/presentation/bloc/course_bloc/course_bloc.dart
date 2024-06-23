import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/course.dart';
import 'package:project_pulse/features/main/domain/usecases/courses/get_all_courses.dart';
import 'package:project_pulse/features/main/domain/usecases/courses/get_all_courses_by_class_code.dart';

part 'course_event.dart';
part 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  final GetAllCourses _getAllCourses;
  final GetAllCoursesByClassCode _getAllCoursesByClassCode;

  CourseBloc({
    required GetAllCourses getAllCourses,
    required GetAllCoursesByClassCode getAllCoursesByClassCode,
  })  : _getAllCourses = getAllCourses,
        _getAllCoursesByClassCode = getAllCoursesByClassCode,
        super(CourseInitial()) {
    on<CourseEvent>((_, emit) {
      emit(CourseLoading());
    });

    on<FetchAllCourses>(_onFetchAllCourses);
    on<FetchCoursesByClassCode>(_onFetchCoursesByClassCode);
  }

  void _onFetchAllCourses(
      FetchAllCourses event, Emitter<CourseState> emit) async {
    emit(CourseListLoading());
    final result = await _getAllCourses(NoParams());
    result.fold(
      (failure) => emit(CourseFailure(message: failure.message)),
      (classes) => emit(CourseLoaded(data: classes)),
    );
  }

  void _onFetchCoursesByClassCode(
      FetchCoursesByClassCode event, Emitter<CourseState> emit) async {
    emit(CourseListLoading());
    final result = await _getAllCoursesByClassCode(
        CourseSearchParams(classCode: event.classCode));
    result.fold(
      (failure) => emit(CourseFailure(message: failure.message)),
      (classes) => emit(CourseListByClassCodeLoaded(
          classCode: event.classCode, data: classes)),
    );
  }
}
