import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/class_schedule.dart';
import 'package:project_pulse/features/main/domain/usecases/fetch_all_current_class_schedules.dart';
import 'package:project_pulse/features/main/domain/usecases/fetch_current_class_schedules.dart';

part 'current_and_upcoming_classes_state.dart';

class CurrentAndUpcomingClassesCubit
    extends Cubit<CurrentAndUpcomingClassesState> {
  final FetchCurrentClass fetchCurrentClass;
  final FetchAllCurrentClassSchedules fetchAllCurrentClassSchedules;

  CurrentAndUpcomingClassesCubit(
      {required this.fetchCurrentClass,
      required this.fetchAllCurrentClassSchedules})
      : super(CurrentAndUpcomingClassesInitial());

  Future<void> getCurrentAndUpcomingClasses(String classCode) async {
    emit(CurrentAndUpcomingClassesLoading());
    final failureOrCurrentClass =
        await fetchCurrentClass(ClassParams(classCode: classCode));
    failureOrCurrentClass.fold(
      (failure) => emit(CurrentAndUpcomingClassesError(failure.message)),
      (currentClass) => emit(CurrentAndUpcomingClassesLoaded(currentClass)),
    );
  }

  Future<void> getAllScheduledClasses() async {
    emit(CurrentAndUpcomingClassesLoading());
    final failureOrCurrentClass =
        await fetchAllCurrentClassSchedules(NoParams());
    failureOrCurrentClass.fold(
      (failure) => emit(CurrentAndUpcomingClassesError(failure.message)),
      (currentClass) => emit(CurrentAndUpcomingClassesLoaded(currentClass)),
    );
  }

  void setCurrentAndUpcomingClasses(List<ClassSchedule> currentClass) {
    emit(CurrentAndUpcomingClassesLoaded(currentClass));
  }

  void resetCurrentAndUpcomingClasses() {
    emit(CurrentAndUpcomingClassesInitial());
  }

  // void showTimeTable()
}
