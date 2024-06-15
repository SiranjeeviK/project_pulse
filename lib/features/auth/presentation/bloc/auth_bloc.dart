import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:project_pulse/core/common/entities/user.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/auth/domain/usecases/current_user.dart';
import 'package:project_pulse/features/auth/domain/usecases/user_login.dart';
import 'package:project_pulse/features/auth/domain/usecases/user_logout.dart';
import 'package:project_pulse/features/auth/domain/usecases/user_sign_up.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignUp _userSignUp;
  final UserLogin _userLogin;
  final CurrentUser _currentUser;
  final UserLogout _userLogout;
  final AppUserCubit _appUserCubit;
  AuthBloc({
    required UserSignUp userSignUp,
    required UserLogin userLogin,
    required CurrentUser currentUser,
    required AppUserCubit appUserCubit,
    required UserLogout userLogout,
  })  : _userSignUp =
            userSignUp, // private fields are initialized with the values passed to the constructor.
        _userLogin =
            userLogin, // private fields are initialized with the values passed to the constructor.
        _currentUser =
            currentUser, // private fields are initialized with the values passed to the constructor.
        _appUserCubit =
            appUserCubit, // private fields are initialized with the values passed to the constructor.
        _userLogout = userLogout,
        super(AuthInitial()) {
    // The initial state of the AuthBloc is AuthInitial.
    on<AuthEvent>(
      (_, emit) => emit(
          AuthLoading()), // NOTE: Emit AuthLoading state when any AuthEvent is dispatched.
    );
    on<AuthSignUp>(_onAuthSignUp); // Handle the AuthSignUp event.
    on<AuthLogin>(_onAuthLogin); // Handle the AuthLogin event.
    on<AuthLogout>(_onAuthLogout); // Handle the AuthLogout event.
    on<AuthIsUserLoggedIn>(
        _isUserLoggedIn); // Handle the AuthIsUserLoggedIn event.
  }

  void _onAuthLogout(
    AuthLogout event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _userLogout(NoParams());

    res.fold((l) => emit(AuthFailure(l.message)), (r) {
      emit(AuthLogoutSuccess());
      _appUserCubit.updateUser(null);
    });
  }

  void _isUserLoggedIn(
    // Handles the AuthIsUserLoggedIn event by checking if the user is logged in.
    AuthIsUserLoggedIn event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _currentUser(NoParams());

    res.fold(
      (l) => emit(AuthFailure(l.message)),
      (r) {
        // emit(AuthSuccess(r));
        _emitAuthSuccess(r, emit);
      },
    );
  }

  // Handles the AuthSignUp event by performing the sign up operation.
  void _onAuthSignUp(AuthSignUp event, Emitter<AuthState> emit) async {
    // Call the userSignUp use case to sign up the user.
    final res = await _userSignUp(
      UserSignUpParams(
        name: event.name,
        email: event.email,
        password: event.password,
        role: event.role,
      ),
    );

    // Handle the result of the sign up operation.
    res.fold(
      (failure) => emit(
        AuthFailure(failure.message),
      ), // Emit AuthFailure state if sign up fails.
      (user) => _emitAuthSuccess(user, emit),
      // emit(
      //   AuthSuccess(user),
      // ), // Emit AuthSuccess state with the user object if sign up succeeds.
    );
  }

  // Handles the AuthLogin event by performing the login operation.
  void _onAuthLogin(AuthLogin event, Emitter<AuthState> emit) async {
    // Call the userLogin use case to log in the user.
    final res = await _userLogin(
      UserLoginParams(email: event.email, password: event.password),
    );

    // Handle the result of the login operation.
    res.fold(
      (failure) => emit(
        AuthFailure(failure.message),
      ), // Emit AuthFailure state if login fails.
      (user) => _emitAuthSuccess(
        user,
        emit,
      ),
      // emit(
      //   // AuthSuccess(user),
      // ), // Emit AuthSuccess state with the user object if login succeeds.
    );
  }

  void _emitAuthSuccess(User user, Emitter<AuthState> emit) {
    // Helper method to emit AuthSuccess state. It also updates the user in the AppUserCubit.
    _appUserCubit.updateUser(user);
    emit(AuthSuccess(user));
  }
}


// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   final UserLogin _userLogin;
//   final UserSignUp _userSignUp;
//   // TODO: implement userlogout
//   // final UserLogout _userLogout;
//   final CurrentUser _currentUser;
//   final AppUserCubit _appUserCubit;
//   AuthBloc({
//     required UserSignUp userSignUp,
//     required UserLogin userLogin,
//     required CurrentUser currentUser,
//     required AppUserCubit appUserCubit,
//   })  : _userLogin = userLogin,
//         _userSignUp = userSignUp,
//         _currentUser = currentUser,
//         _appUserCubit = appUserCubit,
//         super(AuthInitial()) {
//     on<AuthEvent>((event, emit) {
//       (_, emit) => emit(AuthLoading());
//       print('---------The auth event is' + event.toString());
//     });

//     on<AuthSignUp>(_onAuthSignUp); // Handle the AuthSignUp event.
//     on<AuthLogin>(_onAuthLogin); // Handle the AuthLogin event.
//     on<AuthIsUserLoggedIn>(
//         _isUserLoggedIn); // Handle the AuthIsUserLoggedIn event.
//   }

//   void _onAuthSignUp(
//     AuthSignUp event,
//     Emitter<AuthState> emit,
//   ) async {
//     print('---------The auth event is' + event.toString());

//     final res = await _userSignUp(UserSignUpParams(
//       name: event.name,
//       email: event.email,
//       password: event.password,
//     ));

//     res.fold(
//       (l) => AuthFailure(l.message),
//       (user) => _emitAuthSuccess(user, emit),
//     );
//   }

//   void _onAuthLogin(
//     AuthLogin event,
//     Emitter<AuthState> emit,
//   ) async {
//     print('---------The auth event is' + event.toString());

//     final res = await _userLogin(
//       UserLoginParams(email: event.email, password: event.password),
//     );

//     res.fold(
//       (l) => AuthFailure(l.message),
//       (user) => _emitAuthSuccess(user, emit),
//     );
//   }

//   void _isUserLoggedIn(
//     AuthIsUserLoggedIn event,
//     Emitter<AuthState> emit,
//   ) async {
//     print('---------The auth event is' + event.toString());

//     final res = await _currentUser(NoParams());

//     res.fold(
//       (l) => emit(AuthFailure(l.message)),
//       (r) => _emitAuthSuccess(r, emit),
//     );
//   }

//   /// Helper method to emit AuthSuccess state. It also updates the user in the AppUserCubit.
//   void _emitAuthSuccess(User user, Emitter<AuthState> emit) {
//     _appUserCubit.updateUser(user);
//     emit(AuthSuccess(user));
//     print('----auth success emitted');
//   }
// }
