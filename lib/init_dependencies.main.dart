part of 'init_dependencies.dart';

final serviceLocator = GetIt.instance;

/// Initialize all dependencies
Future<void> initDependencies() async {
  // Initialize authentication
  _initAuth();
  _initCurrentAndUpcomingClasses();

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
      () => CurrentClassRemoteDataSourceImpl(),
    )

    // REPOSITORY
    ..registerFactory<CurrentClassRepository>(
      () => CurrentClassRepositoryImpl(
        dataSource: serviceLocator(),
        connectionChecker: serviceLocator(),
      ),
    )

    // USECASES
    ..registerFactory<FetchCurrentClass>(
      () => FetchCurrentClass(
        serviceLocator(),
      ),
    )

    // BLOC
    ..registerFactory<CurrentAndUpcomingClassesCubit>(
      () => CurrentAndUpcomingClassesCubit(fetchCurrentClass: serviceLocator()),
    );
}
