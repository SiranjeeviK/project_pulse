import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/common/entities/user.dart';

part 'app_user_state.dart';

/// The [AppUserCubit] class is a [Cubit] that manages the state of the current user.
/// It emits a [AppUserState] when the user logs in or logs out.
/// The [AppUserCubit] is used to manage the state of the current user in the application.
///
/// Since [AuthBloc] is responsible for managing the state of the authentication feature only,
///
/// we need a separate [AppUserCubit] to manage the state of the current user **application-wide**.
/// For example, we can use it to display the user's profile information in the app bar.
class AppUserCubit extends Cubit<AppUserState> {
  AppUserCubit()
      : super(
            AppUserInitial()); // Initial state of the cubit is AppUserInitial. eg, newly installed app
  void updateUser(User user) {
    if (user == null) {
      // If user is null, emit AppUserInitial. eg, user logged out
      emit(AppUserInitial());
    } else {
      emit(AppUserLoggedIn(user));
    }
  }
}
