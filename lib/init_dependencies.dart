
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:project_pulse/core/network/connection_checker.dart';
import 'package:project_pulse/core/secrets/app_secrets.dart';
import 'package:project_pulse/features/attendance/data/datasources/attendance_remote_datasource.dart';
import 'package:project_pulse/features/attendance/data/repositories/attendance_repository_impl.dart';
import 'package:project_pulse/features/attendance/domain/get_attendance_if_already_marked.dart';
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';
import 'package:project_pulse/features/attendance/domain/usecases/get_student_attendance_using_date.dart';
import 'package:project_pulse/features/attendance/domain/usecases/mark_attendance.dart';
import 'package:project_pulse/features/attendance/presentation/bloc/attendance/attendance_bloc.dart';
import 'package:project_pulse/features/attendance/presentation/bloc/attendance_report/attendance_report_bloc.dart';
import 'package:project_pulse/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:project_pulse/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:project_pulse/features/auth/domain/repository/auth_repository.dart';
import 'package:project_pulse/features/auth/domain/usecases/current_user.dart';
import 'package:project_pulse/features/auth/domain/usecases/user_login.dart';
import 'package:project_pulse/features/auth/domain/usecases/user_logout.dart';
import 'package:project_pulse/features/auth/domain/usecases/user_sign_up.dart';
import 'package:project_pulse/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:project_pulse/features/main/data/datasources/current_class_remote_data_source.dart';
import 'package:project_pulse/features/main/data/datasources/main_remote_data_source.dart';
import 'package:project_pulse/features/main/data/repositories/current_class_repository_impl.dart';
import 'package:project_pulse/features/main/data/repositories/main_repository_impl.dart';
import 'package:project_pulse/features/main/domain/repository/current_class_repository.dart';
import 'package:project_pulse/features/main/domain/repository/main_repository.dart';
import 'package:project_pulse/features/main/domain/usecases/courses/get_all_courses_by_class_code.dart';
import 'package:project_pulse/features/main/domain/usecases/fetch_all_current_class_schedules.dart';
import 'package:project_pulse/features/main/domain/usecases/fetch_current_class_schedules.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_batches.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_classes.dart';
import 'package:project_pulse/features/main/domain/usecases/courses/get_all_courses.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_departments.dart';
import 'package:project_pulse/features/main/domain/usecases/get_all_faculties.dart';
import 'package:project_pulse/features/main/domain/usecases/students/get_all_students.dart';
import 'package:project_pulse/features/main/domain/usecases/students/get_all_students_by_class_code.dart';
import 'package:project_pulse/features/main/presentation/bloc/batch_bloc/batch_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/class_bloc/class_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/course_bloc/course_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/department_bloc/department_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/faculty_bloc/faculty_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/student_bloc/student_bloc.dart';
import 'package:project_pulse/features/main/presentation/cubits/current_and_upcoming_classes/current_and_upcoming_classes_cubit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'init_dependencies.main.dart';