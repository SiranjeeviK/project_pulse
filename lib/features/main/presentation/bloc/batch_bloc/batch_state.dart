part of 'batch_bloc.dart';

@immutable
sealed class BatchState {}

final class BatchInitial extends BatchState {}

// Loading States
final class BatchLoading extends BatchState {}

final class BatchListLoading extends BatchLoading {}

// Failure States
final class BatchFailure extends BatchState {
  final String message;

  BatchFailure({required this.message});
}

// Loaded States
final class BatchLoaded extends BatchState {
  final List<Batch> data;

  BatchLoaded({required this.data});
}
