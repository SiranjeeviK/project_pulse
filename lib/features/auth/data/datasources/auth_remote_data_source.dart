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

                                // create table
                                // public.users (
                                //   user_id uuid not null,
                                //   username text null,
                                //   email text null,
                                //   password_hash text null,
                                //   role text null,
                                //   profile_picture text null,
                                //   bio text null,
                                //   phone_number text null,
                                //   constraint users_pkey primary key (user_id),
                                //   constraint users_email_key unique (email),
                                //   constraint users_phone_number_check check ((length(phone_number) < 15))
                                // ) tablespace pg_default;


        final userModel = UserModel.fromMap(userData.first).copyWith(
          name: userData.first['username'],
          email: userData.first['email'],
          role: userData.first['role'],
          profilePhotoUrl: userData.first['profile_picture'],
          phoneNumber: userData.first['phone_number'],
        );

        if (userModel.role == 'Faculty') {
          final facultyData = await supabaseClient.from('faculty').select().eq(
                'faculty_id',
                currentUserSession!.user.id,
              );
          print(
              '[from auth remote data source] The faculty data is: $facultyData');

                                            // create table
                                            //   public.faculty (
                                            //     faculty_id uuid not null,
                                            //     department text null default '''Not Set'''::text,
                                            //     designation text null default '''Not Set'''::text,
                                            //     constraint faculty_pkey primary key (faculty_id),
                                            //     constraint faculty_faculty_id_fkey foreign key (faculty_id) references users (user_id)
                                            //   ) tablespace pg_default;

          return UserModel.fromMap(facultyData.first).copyWith(
            id: userModel.id,
            email: userModel.email,
            name: userModel.name,
            profilePhotoUrl: userModel.profilePhotoUrl,
            role: userModel.role,
            phoneNumber: userModel.phoneNumber,
            facultyId: facultyData.first['faculty_id'],
            department: facultyData.first['department'],
            designation: facultyData.first['designation'],
          );
        } else if (userModel.role == 'Student') {
          final studentData = await supabaseClient.from('students').select().eq(
                'student_id',
                currentUserSession!.user.id,
              );
          print(
              '[from auth remote data source] The student data is: $studentData');

                                      // create table
                                      // public.students (
                                      //   student_id uuid not null,
                                      //   major text null,
                                      //   graduation_year integer null,
                                      //   register_number text not null,
                                      //   roll_number text not null,
                                      //   constraint students_pkey primary key (student_id, register_number, roll_number),
                                      //   constraint students_register_number_key unique (register_number),
                                      //   constraint students_roll_number_key unique (roll_number),
                                      //   constraint students_student_id_key unique (student_id),
                                      //   constraint students_student_id_fkey foreign key (student_id) references users (user_id) on update cascade
                                      // ) tablespace pg_default;

          return UserModel.fromMap(studentData.first).copyWith(
            id: userModel.id,
            email: userModel.email,
            name: userModel.name,
            profilePhotoUrl: userModel.profilePhotoUrl,
            role: userModel.role,
            phoneNumber: userModel.phoneNumber,
            department: studentData.first['major'],
            graduationYear: studentData.first['graduation_year'],
            registerNo: studentData.first['register_number'],
            rollNo: studentData.first['roll_number'],
          );
        } else {
          throw const ServerException(
              '[from auth remote data source] User role is invalid!');
        }
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
