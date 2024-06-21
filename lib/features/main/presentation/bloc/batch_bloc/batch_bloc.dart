import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/batch.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_batches.dart';

part 'batch_event.dart';
part 'batch_state.dart';

class BatchBloc extends Bloc<BatchEvent, BatchState> {
  final GetAllBatches _getAllBatches;

  BatchBloc({
    required GetAllBatches getAllBatches,
  })  : _getAllBatches = getAllBatches,
        super(BatchInitial()) {
    on<BatchEvent>((_, emit) {
      emit(BatchLoading());
    });

    on<FetchAllBatches>(_onFetchAllBatches);
  }

  void _onFetchAllBatches(
      FetchAllBatches event, Emitter<BatchState> emit) async {
    emit(BatchListLoading());
    final result = await _getAllBatches(NoParams());
    result.fold(
      (failure) => emit(BatchFailure(message: failure.message)),
      (classes) => emit(BatchLoaded(data: classes)),
    );
  }
}
