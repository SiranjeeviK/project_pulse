import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/department.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_departments.dart';

part 'department_event.dart';
part 'department_state.dart';

class DepartmentBloc extends Bloc<DepartmentEvent, DepartmentState> {
  final GetAllDepartments _getAllDepartments;

  DepartmentBloc({
    required GetAllDepartments getAllDepartments,
  })  : _getAllDepartments = getAllDepartments,
        super(DepartmentInitial()) {
    on<DepartmentEvent>((_, emit) {
      emit(DepartmentLoading());
    });

    on<FetchAllDepartments>(_onFetchAllDepartments);
  }

  void _onFetchAllDepartments(
      FetchAllDepartments event, Emitter<DepartmentState> emit) async {
    emit(DepartmentListLoading());
    final result = await _getAllDepartments(NoParams());
    result.fold(
      (failure) => emit(DepartmentFailure(message: failure.message)),
      (classes) => emit(DepartmentLoaded(data: classes)),
    );
  }
}
