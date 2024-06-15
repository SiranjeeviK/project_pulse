import 'package:project_pulse/core/error/exception.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:project_pulse/features/auth/data/models/user_model.dart';

abstract interface class AuthRemoteDataSource {
  /// Returns the current user session, if available.
  Session? get currentUserSession;

  /// Signs up a new user with the provided name, email, and password.
  ///
  /// Throws an exception if the sign-up process fails.
  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
    required String role,
  });

  /// Logs in a user with the provided email and password.
  ///
  /// Throws an exception if the login process fails.
  Future<UserModel> loginWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Signs out the current user.
  ///
  /// Throws an exception if the sign-out process fails.
  Future<void> signOut();

  /// Retrieves the current user's data.
  ///
  /// Returns `null` if the user is not logged in.
  Future<UserModel?> getCurrentUserData();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;

  /// Constructs an instance of [AuthRemoteDataSourceImpl] with the given [supabaseClient].
  AuthRemoteDataSourceImpl(this.supabaseClient);

  /// Returns the current user session.
  @override
  Session? get currentUserSession => supabaseClient.auth.currentSession;

  /// Retrieves the current user's data.
  ///
  /// Returns null if there is no current user session.
  ///
  /// Throws a [ServerException] if an error occurs.
  @override
  Future<UserModel?> getCurrentUserData() async {
    try {
      if (currentUserSession != null) {
        final userData = await supabaseClient.from('users').select().eq(
              'user_id',
              currentUserSession!.user.id,
            );
        print('[from auth remote data source] The user data is: $userData');
        return UserModel.fromMap(userData.first).copyWith(
          name: userData.first['username'],
          email: userData.first['email'],
          role: userData.first['role'],
          profilePhotoUrl: userData.first['profile_picture'],
        );
      }

      return null;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  /// Logs in a user with the provided email and password.
  ///
  /// Throws a [ServerException] if the user is null.
  @override
  Future<UserModel> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth
          .signInWithPassword(password: password, email: email);
      // print(response.toString());

      if (response.user == null) {
        throw const ServerException('User is null!');
      }
      // TODO: check this with and without copyWith
      // I am not sure we are adding email and do we need to need add name as well?
      return (UserModel.fromMap(
        response.user!.toJson(),
      ).copyWith(
        email: currentUserSession!.user.email,
      ));
    } on AuthException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  /// Signs up a user with the provided name, email, and password.
  ///
  /// Throws a [ServerException] if the user is null.
  @override
  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
    required String role,
  }) async {
    try {
      final response = await supabaseClient.auth.signUp(
        password: password,
        email: email,
        // TODO: Need to add other data such as role, etc..,
        data: {
          'name': name,
          'role': role,
        },
      );
      // print(response.user.toString());
      if (response.user == null) {
        throw const ServerException('User is null!');
      } else {
        return UserModel.fromMap(response.user!.toJson());
      }
    } on AuthException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  /// Signs out the current user.
  @override
  Future<void> signOut() async {
    try {
      await supabaseClient.auth.signOut();
    } on AuthException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
