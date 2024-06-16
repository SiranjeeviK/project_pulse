import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:project_pulse/core/theme/theme.dart';
import 'package:project_pulse/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:project_pulse/features/auth/presentation/pages/login_page.dart';
import 'package:project_pulse/features/auth/presentation/pages/signup_page.dart';
import 'package:project_pulse/features/main/presentation/cubits/current_and_upcoming_classes/current_and_upcoming_classes_cubit.dart';
import 'package:project_pulse/features/main/presentation/pages/courses_page.dart';
import 'package:project_pulse/features/main/presentation/pages/home_page.dart';
import 'package:project_pulse/features/main/presentation/pages/schedule_page.dart';
import 'package:project_pulse/features/notifications/presentation/pages/notifications_page.dart';
import 'package:project_pulse/features/settings/presentation/pages/app_settings.dart';
import 'package:project_pulse/features/settings/presentation/pages/profile_page.dart';
import 'package:project_pulse/init_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      // for authentication
      create: (_) => serviceLocator<AuthBloc>(),
    ),
    BlocProvider(
      // for all user related purposes
      create: (_) => serviceLocator<AppUserCubit>(),
    ),
    // for current and upcoming classes
    BlocProvider(
      create: (_) => serviceLocator<CurrentAndUpcomingClassesCubit>(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(AuthIsUserLoggedIn());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project PULSE',
      theme: AppTheme.lightThemeMode,
      home: BlocSelector<AppUserCubit, AppUserState, bool>(
        selector: (state) {
          // print);
          return state is AppUserLoggedIn; //&& state.user != null;
        },
        builder: (context, isLoggedIn) {
          if (isLoggedIn) {
            print('User Logged in');
            return HomePage();
          } else {
            print('User not logged in');
            return const LogInPage();
          }
        },
      ),
      routes: {
        '/home': (context) => HomePage(),
        '/courses': (context) => const CoursesPage(),
        '/schedule': (context) => const SchedulePage(),
        '/notifications': (context) => const NotificationsPage(),
        '/profile': (context) => const ProfilePage(),
        '/signup': (context) => const SignUpPage(),
        '/login': (context) => const LogInPage(),
        '/myapp': (context) => const MyApp(),
        '/appsettings': (context) => const AppSettings(),
      },
    );
  }
}
