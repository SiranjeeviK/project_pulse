import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/course.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_courses.dart';

part 'course_event.dart';
part 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  final GetAllCourses _getAllCourses;

  CourseBloc({
    required GetAllCourses getAllCourses,
  })  : _getAllCourses = getAllCourses,
        super(CourseInitial()) {
    on<CourseEvent>((_, emit) {
      emit(CourseLoading());
    });

    on<FetchAllCourses>(_onFetchAllCourses);
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
}
