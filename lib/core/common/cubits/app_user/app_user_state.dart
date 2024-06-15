part of 'app_user_cubit.dart';

@immutable
sealed class AppUserState {}

final class AppUserInitial extends AppUserState {}

final class AppUserLoggedIn extends AppUserState {
  final User user;
  AppUserLoggedIn(this.user);
}

final class AppUserError extends AppUserState {
  final String message;
  AppUserError(this.message);
}

final class AppUserLoading extends AppUserState {}

final class AppUserLogout extends AppUserState {}

final class AppUserLogoutError extends AppUserState {
  final String message;
  AppUserLogoutError(this.message);
}

final class AppUserLogoutSuccess extends AppUserState {}

final class AppUserUpdate extends AppUserState {
  final User user;
  AppUserUpdate(this.user);
}

final class AppUserUpdateError extends AppUserState {
  final String message;
  AppUserUpdateError(this.message);
}

final class AppUserUpdateSuccess extends AppUserState {}

final class AppUserUpdateLoading extends AppUserState {}

final class AppUserUpdateProfile extends AppUserState {
  final User user;
  AppUserUpdateProfile(this.user);
}

final class AppUserUpdateProfileError extends AppUserState {
  final String message;
  AppUserUpdateProfileError(this.message);
}

final class AppUserUpdateProfileSuccess extends AppUserState {}

final class AppUserUpdateProfileLoading extends AppUserState {}

final class AppUserUpdateAvatar extends AppUserState {
  final User user;
  AppUserUpdateAvatar(this.user);
}

final class AppUserUpdateAvatarError extends AppUserState {
  final String message;
  AppUserUpdateAvatarError(this.message);
}

final class AppUserUpdateAvatarSuccess extends AppUserState {}

final class AppUserUpdateAvatarLoading extends AppUserState {}

final class AppUserUpdateEmail extends AppUserState {
  final User user;
  AppUserUpdateEmail(this.user);
}

final class AppUserUpdateEmailError extends AppUserState {
  final String message;
  AppUserUpdateEmailError(this.message);
}

final class AppUserUpdateEmailSuccess extends AppUserState {}

final class AppUserUpdateEmailLoading extends AppUserState {}

final class AppUserUpdatePassword extends AppUserState {
  final User user;
  AppUserUpdatePassword(this.user);
}

final class AppUserUpdatePasswordError extends AppUserState {
  final String message;
  AppUserUpdatePasswordError(this.message);
}

final class AppUserUpdatePasswordSuccess extends AppUserState {}

final class AppUserUpdatePasswordLoading extends AppUserState {}

final class AppUserUpdateName extends AppUserState {
  final User user;
  AppUserUpdateName(this.user);
}

final class AppUserUpdateNameError extends AppUserState {
  final String message;
  AppUserUpdateNameError(this.message);
}

final class AppUserUpdateNameSuccess extends AppUserState {}

final class AppUserUpdateNameLoading extends AppUserState {
// TODO: Review the above code. If there is no error, remove this comment.
}
