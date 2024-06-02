import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/common/entities/user.dart';
import 'package:project_pulse/core/constants/constants.dart';
import 'package:project_pulse/core/error/exception.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/network/connection_checker.dart';
import 'package:project_pulse/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:project_pulse/features/auth/data/models/user_model.dart';
import 'package:project_pulse/features/auth/domain/repository/auth_repository.dart';

/// This class is the implementation of the [AuthRepository] interface.
/// It provides concrete implementations of the methods defined in the [AuthRepository] interface.
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final ConnectionChecker connectionChecker;

  AuthRepositoryImpl(
    this.remoteDataSource,
    this.connectionChecker,
  );

  /// Retrieves the currently logged-in user.
  ///
  /// Returns a [Future] that emits an [Either] with a [Failure] if the user is not logged in,
  /// or a [User] if the user is logged in.
  @override
  Future<Either<Failure, User>> currentUser() async {
    // when there is no internet connection
    // we cannot use `_getUser()` for exception handling, since this need to be work in offline as well
    try {
      if (!await connectionChecker.isConnected) {
        final session = remoteDataSource.currentUserSession;
        if (session == null) {
          // user not logged in as well
          return left(Failure('User not logged in!'));
        }

        // FIXME: This may set the name, email, role as ''
        return right(
          UserModel(
              id: session.user.id,
              email: session.user.email ?? '',
              name: '',
              profilePhotoUrl: '',
              role: ''),
        );
      }

      // internet available
      final user = await remoteDataSource.getCurrentUserData();

      if (user == null) {
        return left(Failure('User not logged in!'));
      }

      return right(user);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }

  /// Logs in a user with the provided [email] and [password].
  ///
  /// Returns a [Future] that emits an [Either] with a [Failure] if the login fails,
  /// or a [User] if the login is successful.
  @override
  Future<Either<Failure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    // Call the loginWithEmailPassword method from the remote data source and return the result as an Either<Failure, User>.
    return _getUser(
      () async => await remoteDataSource.loginWithEmailAndPassword(
          email: email, password: password),
    );
  }

  /// Signs up a user with the provided [name], [email], and [password].
  ///
  /// Returns a [Future] that emits an [Either] with a [Failure] if the signup fails,
  /// or a [User] if the signup is successful.
  @override
  Future<Either<Failure, User>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    return _getUser(
      // Call the signUpWithEmailPassword method from the remote data source and return the result as an Either<Failure, User>.
      () async => remoteDataSource.signUpWithEmailAndPassword(
          email: email, password: password, name: name),
    );
  }

  /// This function handles exception handling for getting a user.
  ///
  /// It takes a function [fn] as a parameter, which is responsible for getting the user.
  /// Returns a [Future] that emits an [Either] with a [Failure] if an exception occurs,
  /// or a [User] if the user is retrieved successfully.
  Future<Either<Failure, User>> _getUser(Future<User> Function() fn) async {
    try {
      //checking internet connection and return an error message wrapped in left() if there is no internet connection
      if (!await connectionChecker.isConnected) {
        return left(Failure(Constants.noConnectionErrorMessage));
      }
      // Call the provided function to get the user.
      final user = await fn();
      // Return the user wrapped in a right() method from fpdart to indicate success.
      return right(user);
    } on ServerException catch (e) {
      // If a ServerException is thrown, return a Failure with the exception message.
      return left(Failure(e.toString()));
    }
  }
}
