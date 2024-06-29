part of 'init_dependencies.dart';

final serviceLocator = GetIt.instance;

/// Initialize all dependencies
Future<void> initDependencies() async {
  // Initialize authentication
  _initAuth();

  // Initialize main
  _initMain();
  _initCurrentAndUpcomingClasses();
  _initClass();
  _initStudent();
  _initFaculty();
  _initDepartment();
  _initBatch();
  _initCourse();
  _initAttendance();

  // Initialize Supabase client
  final supabase = await Supabase.initialize(
      url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseAnonKey);
  // Register Supabase client as a singleton means that it will be created only once
  serviceLocator.registerLazySingleton(() => supabase.client);

  Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;

  // TODO: for offline cacheing, implement this, give good name for box
  serviceLocator.registerLazySingleton(() => Hive.box(name: 'offline_data'));

  serviceLocator.registerFactory(() => InternetConnection());

  // core
  serviceLocator.registerLazySingleton(() => AppUserCubit());

  serviceLocator.registerFactory<ConnectionChecker>(
      () => ConnectionCheckerImpl(serviceLocator()));
}

void _initAttendance() {
  // DATASOURCE
  serviceLocator
    ..registerFactory<AttendanceRemoteDataSource>(
      () => AttendanceRemoteDataSourceImpl(
        supabaseClient: serviceLocator(),
      ),
    )

    // REPOSITORY
    ..registerFactory<AttendanceRepository>(
      () => AttendanceRepositoryImpl(
        connectionChecker: serviceLocator(),
        attendanceRemoteDataSource: serviceLocator(),
      ),
    )

    // USECASES
    ..registerFactory<MarkAttendance>(
      () => MarkAttendance(
        serviceLocator(),
      ),
    )

    /// FIXME: i don't know which one of registerFactory or registerLazySingleton is correct
    // BLOC
    ..registerLazySingleton<AttendanceBloc>(
      () => AttendanceBloc(
        markAttendance: serviceLocator(),
      ),
    );
}

/// Initialize all dependencies related to authentication
void _initAuth() {
  // DATASOURCE
  serviceLocator
    ..registerFactory<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(
        serviceLocator(),
      ),
    )

    // REPOSITORY
    ..registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(
        serviceLocator(),
        serviceLocator(),
      ),
    )

    // USECASES
    ..registerFactory<UserSignUp>(
      () => UserSignUp(
        serviceLocator(),
      ),
    )
    ..registerFactory<UserLogin>(
      () => UserLogin(
        serviceLocator(),
      ),
    )
    ..registerFactory<CurrentUser>(
      () => CurrentUser(
        serviceLocator(),
      ),
    )
    ..registerFactory<UserLogout>(
      () => UserLogout(
        serviceLocator(),
      ),
    )

    // BLOC
    ..registerLazySingleton<AuthBloc>(
      () => AuthBloc(
        userSignUp: serviceLocator(),
        userLogin: serviceLocator(),
        currentUser: serviceLocator(),
        appUserCubit: serviceLocator(),
        userLogout: serviceLocator(),
      ),
    );
}

// Initialize all dependencies related to Current and Upcoming Classes
void _initCurrentAndUpcomingClasses() {
  // DATASOURCE
  serviceLocator
    ..registerFactory<CurrentClassRemoteDataSource>(
      () => CurrentClassRemoteDataSourceImpl(
          supabaseClient: serviceLocator(),
          authRemoteDataSource: serviceLocator()),
    )

    // REPOSITORY
    ..registerFactory<CurrentClassRepository>(
      () => CurrentClassRepositoryImpl(
        dataSource: serviceLocator(),
        connectionChecker: serviceLocator(),
      ),
    )

    // USECASES
    ..registerFactory<FetchCurrentClass>(() => FetchCurrentClass(
          serviceLocator(),
        ))
    ..registerFactory<FetchAllCurrentClassSchedules>(
        () => FetchAllCurrentClassSchedules(
              serviceLocator(),
            ))

    // BLOC
    ..registerFactory<CurrentAndUpcomingClassesCubit>(
      () => CurrentAndUpcomingClassesCubit(fetchCurrentClass: serviceLocator(), fetchAllCurrentClassSchedules: serviceLocator()),
    );
}

/// Initialize all dependencies related to main
void _initMain() {
  // DATA SOURCES
  serviceLocator
    ..registerFactory<MainRemoteDataSource>(
      () => MainRemoteDataSourceImpl(
        supabaseClient: serviceLocator(),
      ),
    )

    // REPOSITORIES

    ..registerFactory<MainRepository>(
      () => MainRepositoryImpl(
        connectionChecker: serviceLocator(),
        mainRemoteDataSource: serviceLocator(),
      ),
    )

    // USECASES
    ..registerFactory<GetAllBatches>(
      () => GetAllBatches(
        mainRepository: serviceLocator(),
      ),
    )
    ..registerFactory<GetAllClasses>(
      () => GetAllClasses(
        mainRepository: serviceLocator(),
      ),
    )
    ..registerFactory<GetAllCourses>(
      () => GetAllCourses(
        mainRepository: serviceLocator(),
      ),
    )
    ..registerFactory<GetAllCoursesByClassCode>(
      () => GetAllCoursesByClassCode(
        mainRepository: serviceLocator(),
      ),
    )
    ..registerFactory<GetAllDepartments>(
      () => GetAllDepartments(
        mainRepository: serviceLocator(),
      ),
    )
    ..registerFactory<GetAllFaculties>(
      () => GetAllFaculties(
        mainRepository: serviceLocator(),
      ),
    )
    ..registerFactory<GetAllStudents>(
      () => GetAllStudents(
        mainRepository: serviceLocator(),
      ),
    )
    ..registerFactory<GetAllStudentsByClassCode>(
      () => GetAllStudentsByClassCode(
        mainRepository: serviceLocator(),
      ),
    );

  // // BLOC
  // ..registerLazySingleton<MainBloc>(
  //   () => MainBloc(
  //     getAllBatches: serviceLocator(),
  //     getAllClasses: serviceLocator(),
  //     getAllCourses: serviceLocator(),
  //     getAllDepartments: serviceLocator(),
  //     getAllFaculties: serviceLocator(),
  //     getAllStudents: serviceLocator(),
  //   ),
  // );
}

/// Initialize all dependencies related to class
void _initClass() {
  serviceLocator

      // BLOC
      .registerLazySingleton<ClassBloc>(
    () => ClassBloc(
      getAllClasses: serviceLocator(),
    ),
  );
}

/// Initialize all dependencies related to student
void _initStudent() {
  serviceLocator

      // BLOC
      .registerLazySingleton<StudentBloc>(
    () => StudentBloc(
      getAllStudents: serviceLocator(),
      getAllStudentsByClassCode: serviceLocator(),
    ),
  );
}

/// Initialize all dependencies related to faculty
void _initFaculty() {
  serviceLocator

      // BLOC
      .registerLazySingleton<FacultyBloc>(
    () => FacultyBloc(
      getAllFaculties: serviceLocator(),
    ),
  );
}

/// Initialize all dependencies related to department
void _initDepartment() {
  serviceLocator

      // BLOC
      .registerLazySingleton<DepartmentBloc>(
    () => DepartmentBloc(
      getAllDepartments: serviceLocator(),
    ),
  );
}

/// Initialize all dependencies related to batch
void _initBatch() {
  serviceLocator

      // BLOC
      .registerLazySingleton<BatchBloc>(
    () => BatchBloc(
      getAllBatches: serviceLocator(),
    ),
  );
}

/// Initialize all dependencies related to course
void _initCourse() {
  serviceLocator

      // BLOC
      .registerLazySingleton<CourseBloc>(
    () => CourseBloc(
      getAllCourses: serviceLocator(),
      getAllCoursesByClassCode: serviceLocator(),
    ),
  );
}
