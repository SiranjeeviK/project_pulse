part of 'class_bloc.dart';

@immutable
sealed class ClassState {}

final class ClassInitial extends ClassState {}

// Loading States
final class ClassLoading extends ClassState {}

final class ClassListLoading extends ClassLoading {}



// Failure States
final class ClassFailure extends ClassState {
  final String message;

  ClassFailure({required this.message});
}

// Loaded States
final class ClassLoaded extends ClassState {
  final List<Class> data;

  ClassLoaded({required this.data});
}
