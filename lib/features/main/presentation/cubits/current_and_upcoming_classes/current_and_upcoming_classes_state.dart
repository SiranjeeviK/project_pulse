part of 'current_and_upcoming_classes_cubit.dart';

@immutable
sealed class CurrentAndUpcomingClassesState {}

final class CurrentAndUpcomingClassesInitial
    extends CurrentAndUpcomingClassesState {}

final class CurrentAndUpcomingClassesLoading
    extends CurrentAndUpcomingClassesState {}

final class CurrentAndUpcomingClassesLoaded
    extends CurrentAndUpcomingClassesState {
  final CurrentClass currentClass;
  CurrentAndUpcomingClassesLoaded(this.currentClass);
}

final class CurrentAndUpcomingClassesError
    extends CurrentAndUpcomingClassesState {
  final String message;
  CurrentAndUpcomingClassesError(this.message);
}
