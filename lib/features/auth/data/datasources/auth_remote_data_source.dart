import 'package:flutter/material.dart';
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
        //   public.users (
        //     user_id uuid not null,
        //     username text null,
        //     email text null,
        //     password_hash text null,
        //     role text null,
        //     profile_picture text null,
        //     bio text null,
        //     phone_number text null,
        //     constraint users_pkey primary key (user_id),
        //     constraint users_email_key unique (email),
        //     constraint users_phone_number_check check ((length(phone_number) < 15))
        //   ) tablespace pg_default;

        // create trigger insert_faculty_or_students_trigger
        // after insert on users for each row
        // execute function insert_faculty_or_students ();

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
          //     department_name text null,
          //     designation text null default '''Not Set'''::text,
          //     handling_class text null,
          //     department_code text null,
          //     constraint faculty_pkey primary key (faculty_id),
          //     constraint faculty_department_code_fkey foreign key (department_code) references departments (department_code) on update cascade on delete restrict,
          //     constraint faculty_department_name_fkey foreign key (department_name) references departments (department_name) on update cascade on delete restrict,
          //     constraint faculty_faculty_id_fkey foreign key (faculty_id) references users (user_id) on update cascade on delete restrict,
          //     constraint faculty_handling_class_fkey foreign key (handling_class) references classes (class_code) on update cascade on delete restrict
          //   ) tablespace pg_default;

          return UserModel.fromMap(facultyData.first).copyWith(
            id: userModel.id,
            email: userModel.email,
            name: userModel.name,
            profilePhotoUrl: userModel.profilePhotoUrl,
            role: userModel.role,
            phoneNumber: userModel.phoneNumber,
            facultyId: facultyData.first['faculty_id'],
            departmentName: facultyData.first['department_name'],
            designation: facultyData.first['designation'],
            classCode: facultyData.first['class_code'],
            departmentCode: facultyData.first['department_code'],
          );
        } else if (userModel.role == 'Student') {
          final studentData = await supabaseClient.from('students').select().eq(
                'student_id',
                currentUserSession!.user.id,
              );
          print(
              '[from auth remote data source] The student data is: $studentData');

          // create table
          //   public.students (
          //     student_id uuid not null,
          //     department_name text null,
          //     graduation_year integer null,
          //     register_number text not null,
          //     roll_number text not null,
          //     section text null,
          //     semester integer null,
          //     class_code text null,
          //     constraint students_pkey primary key (student_id, register_number, roll_number),
          //     constraint students_student_id_key unique (student_id),
          //     constraint students_register_number_key unique (register_number),
          //     constraint students_roll_number_key unique (roll_number),
          //     constraint students_student_id_fkey foreign key (student_id) references users (user_id) on update cascade,
          //     constraint students_class_code_fkey foreign key (class_code) references classes (class_code) on update cascade on delete restrict,
          //     constraint students_graduation_year_fkey foreign key (graduation_year) references batches (batch_id) on update cascade on delete restrict,
          //     constraint students_department_name_fkey foreign key (department_name) references departments (department_name) on update cascade on delete restrict
          //   ) tablespace pg_default;

          final departmentData =
              await supabaseClient.from('departments').select().eq(
                    'department_name',
                    studentData.first['department_name'],
                  );

          print(
              '[from auth remote data source] The department data is: $departmentData');

          // create table
          //   public.departments (
          //     department_id bigint generated always as identity,
          //     department_name text not null,
          //     department_code text not null,
          //     head_of_department_id uuid null,
          //     classes text[] null,
          //     constraint departments_pkey primary key (department_id),
          //     constraint departments_department_code_key unique (department_code),
          //     constraint departments_department_name_key unique (department_name),
          //     constraint departments_head_of_department_id_fkey foreign key (head_of_department_id) references faculty (faculty_id)
          //   ) tablespace pg_default;

          return UserModel.fromMap(studentData.first).copyWith(
            id: userModel.id,
            email: userModel.email,
            name: userModel.name,
            profilePhotoUrl: userModel.profilePhotoUrl,
            role: userModel.role,
            phoneNumber: userModel.phoneNumber,
            departmentName: studentData.first['department_name'],
            graduationYear: studentData.first['graduation_year'],
            registerNo: studentData.first['register_number'],
            rollNo: studentData.first['roll_number'],
            section: studentData.first['section'],
            semester: studentData.first['semester'],
            classCode: studentData.first['class_code'],
            departmentCode: departmentData.first[
                'department_code'], //FIXME: get response from classes table using class_code to get department_code
          );
        } else {
          throw const ServerException(
              '[from auth remote data source] User role is invalid!');
        }
      }

      return null;
    } catch (e, stackTrace) {
      debugPrintStack(
        label: e.toString(),
        stackTrace: stackTrace,
      );

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
