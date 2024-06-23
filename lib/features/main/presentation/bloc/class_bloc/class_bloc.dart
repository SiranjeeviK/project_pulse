import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/class.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_classes.dart';

part 'class_event.dart';
part 'class_state.dart';

class ClassBloc extends Bloc<ClassEvent, ClassState> {
  final GetAllClasses _getAllClasses;

  ClassBloc({
    required GetAllClasses getAllClasses,
  })  : _getAllClasses = getAllClasses,
        super(ClassInitial()) {
    on<ClassEvent>((_, emit) {
      emit(ClassLoading());
    });

    on<FetchAllClasses>(_onFetchAllClasses);
  }

  void _onFetchAllClasses(
      FetchAllClasses event, Emitter<ClassState> emit) async {
    emit(ClassListLoading());
    final result = await _getAllClasses(NoParams());
    result.fold(
      (failure) => emit(ClassFailure(message: failure.message)),
      (classes) => emit(ClassLoaded(data: classes)),
    );
  }
}
