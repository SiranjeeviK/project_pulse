import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:project_pulse/core/common/widgets/page_not_found.dart';
import 'package:project_pulse/core/theme/theme.dart';
import 'package:project_pulse/features/attendance/presentation/pages/attendance_batch_list.dart';
import 'package:project_pulse/features/attendance/presentation/pages/attendance_class_list.dart';
import 'package:project_pulse/features/attendance/presentation/pages/attendance_department_list.dart';
import 'package:project_pulse/features/attendance/presentation/pages/attendance_main.dart';
import 'package:project_pulse/features/attendance/presentation/pages/attendance_student_view.dart';
import 'package:project_pulse/features/attendance/presentation/pages/mark_attendance.dart';
import 'package:project_pulse/features/attendance/presentation/pages/no_records_found.dart';
import 'package:project_pulse/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:project_pulse/features/auth/presentation/pages/login_page.dart';
import 'package:project_pulse/features/auth/presentation/pages/signup_page.dart';
import 'package:project_pulse/features/main/presentation/bloc/main_bloc.dart';
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
  runApp(
    MultiBlocProvider(
      providers: [
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
        ),
        // for main
        BlocProvider(
          create: (_) => serviceLocator<MainBloc>(),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
            return const HomePage();
          } else {
            print('User not logged in');
            return const LogInPage();
          }
        },
      ),
      // routes: {
      //   '/home': (context) => HomePage(),
      //   '/courses': (context) => const CoursesPage(),
      //   '/schedule': (context) => const SchedulePage(),
      //   '/notifications': (context) => const NotificationsPage(),
      //   '/profile': (context) => const ProfilePage(),
      //   '/signup': (context) => const SignUpPage(),
      //   '/login': (context) => const LogInPage(),
      //   '/myapp': (context) => const MyApp(),
      //   '/appsettings': (context) => const AppSettings(),
      //   '/attendance': (context) => const AttendanceMain(),
      //   '/attendance/department_view': (context) =>
      //       const AttendanceDepartmentView(),
      //   '/attendance/batch_view': (context) => const AttendanceBatchView(),
      //   '/attendance/class_view': (context) => const AttendanceClassView(),
      //   '/attendance/mark_attendance': (context) => const MarkAttendance(),
      //   '/attendance/student_view': (context) => const AttendanceStudentView(),
      //   '/no_records_found': (context) => const NoRecordsFound(),
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const PageNotFound());
      },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/home':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case '/courses':
            return MaterialPageRoute(builder: (context) => const CoursesPage());
          case '/schedule':
            return MaterialPageRoute(
                builder: (context) => const SchedulePage());
          case '/notifications':
            return MaterialPageRoute(
                builder: (context) => const NotificationsPage());
          case '/profile':
            return MaterialPageRoute(builder: (context) => const ProfilePage());
          case '/signup':
            return MaterialPageRoute(builder: (context) => const SignUpPage());
          case '/login':
            return MaterialPageRoute(builder: (context) => const LogInPage());
          case '/myapp':
            return MaterialPageRoute(builder: (context) => const MyApp());
          case '/appsettings':
            return MaterialPageRoute(builder: (context) => const AppSettings());
          case '/attendance':
            return MaterialPageRoute(
                builder: (context) => const AttendanceMain());
          case '/attendance/department_list':
            return MaterialPageRoute(
                builder: (context) => const AttendanceDepartmentList());
          case '/attendance/batch_list':
            return MaterialPageRoute(
                builder: (context) => const AttendanceBatchList());
          case '/attendance/class_list':
            return MaterialPageRoute(
                builder: (context) => const AttendanceClassList());
          case '/attendance/mark_attendance':
            return MaterialPageRoute(
                builder: (context) => const MarkAttendance());
          case '/attendance/student_view':
            return MaterialPageRoute(
                builder: (context) => const AttendanceStudentView());
          case '/no_records_found':
            return MaterialPageRoute(
                builder: (context) => const NoRecordsFound());
          default:
            return MaterialPageRoute(
                builder: (context) => const NoRecordsFound());
        }
      },
    );
  }
}
