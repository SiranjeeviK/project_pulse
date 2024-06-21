import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/faculty.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_faculties.dart';

part 'faculty_event.dart';
part 'faculty_state.dart';

class FacultyBloc extends Bloc<FacultyEvent, FacultyState> {
  final GetAllFaculties _getAllFaculties;

  FacultyBloc({
    required GetAllFaculties getAllFaculties,
  })  : _getAllFaculties = getAllFaculties,
        super(FacultyInitial()) {
    on<FacultyEvent>((_, emit) {
      emit(FacultyLoading());
    });

    on<FetchAllFaculties>(_onFetchAllFaculties);
  }

  void _onFetchAllFaculties(
      FetchAllFaculties event, Emitter<FacultyState> emit) async {
    emit(FacultyListLoading());
    final result = await _getAllFaculties(NoParams());
    result.fold(
      (failure) => emit(FacultyFailure(message: failure.message)),
      (classes) => emit(FacultyLoaded(data: classes)),
    );
  }
}
