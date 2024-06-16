import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/current_class.dart';
import 'package:project_pulse/features/main/domain/usecases/fetch_current_class.dart';

part 'current_and_upcoming_classes_state.dart';

class CurrentAndUpcomingClassesCubit
    extends Cubit<CurrentAndUpcomingClassesState> {
  final FetchCurrentClass fetchCurrentClass;

  CurrentAndUpcomingClassesCubit({required this.fetchCurrentClass})
      : super(CurrentAndUpcomingClassesInitial());

  Future<void> getCurrentAndUpcomingClasses() async {
    emit(CurrentAndUpcomingClassesLoading());
    final failureOrCurrentClass = await fetchCurrentClass(NoParams());
    failureOrCurrentClass.fold(
      (failure) => emit(CurrentAndUpcomingClassesError(failure.message)),
      (currentClass) => emit(CurrentAndUpcomingClassesLoaded(currentClass)),
    );
  }

  void setCurrentAndUpcomingClasses(CurrentClass currentClass) {
    emit(CurrentAndUpcomingClassesLoaded(currentClass));
  }

  void resetCurrentAndUpcomingClasses() {
    emit(CurrentAndUpcomingClassesInitial());
  }

  // void showTimeTable()
}
