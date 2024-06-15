
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:project_pulse/core/network/connection_checker.dart';
import 'package:project_pulse/core/secrets/app_secrets.dart';
import 'package:project_pulse/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:project_pulse/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:project_pulse/features/auth/domain/repository/auth_repository.dart';
import 'package:project_pulse/features/auth/domain/usecases/current_user.dart';
import 'package:project_pulse/features/auth/domain/usecases/user_login.dart';
import 'package:project_pulse/features/auth/domain/usecases/user_logout.dart';
import 'package:project_pulse/features/auth/domain/usecases/user_sign_up.dart';
import 'package:project_pulse/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'init_dependencies.main.dart';