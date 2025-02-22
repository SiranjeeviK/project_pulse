import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:project_pulse/core/common/widgets/page_not_found.dart';
import 'package:project_pulse/core/theme/theme.dart';
import 'package:project_pulse/features/attendance/presentation/bloc/attendance/attendance_bloc.dart';
import 'package:project_pulse/features/attendance/presentation/bloc/attendance_report/attendance_report_bloc.dart';
import 'package:project_pulse/features/attendance/presentation/pages/attendance_report/class_report/attendance_class_report.dart';
import 'package:project_pulse/features/attendance/presentation/pages/attendance_report/class_report/student_detail_page_with_date.dart';
import 'package:project_pulse/features/attendance/presentation/pages/attendance_report/subject_report/student_subject_attendance_detail_page.dart';
import 'package:project_pulse/features/attendance/presentation/pages/mark_attendance/manual_mark_attendance_all_classes_list.dart';
import 'package:project_pulse/features/attendance/presentation/pages/attendance_report/class_report/attendance_class_report_student_list.dart';
import 'package:project_pulse/features/main/domain/entities/class.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';
import 'package:project_pulse/features/main/presentation/bloc/batch_bloc/batch_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/class_bloc/class_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/course_bloc/course_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/department_bloc/department_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/faculty_bloc/faculty_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/student_bloc/student_bloc.dart';
import 'package:project_pulse/features/main/presentation/pages/college_database.dart';
import 'package:project_pulse/features/main/presentation/pages/list/batch_list.dart';
import 'package:project_pulse/features/main/presentation/pages/list/class_list.dart';
import 'package:project_pulse/features/main/presentation/pages/list/courses_list.dart';
import 'package:project_pulse/features/main/presentation/pages/list/department_list.dart';
import 'package:project_pulse/features/attendance/presentation/pages/attendance_main.dart';
import 'package:project_pulse/features/main/presentation/pages/list/faculty_list.dart';
import 'package:project_pulse/features/main/presentation/pages/list/student_list.dart';
import 'package:project_pulse/features/attendance/presentation/pages/student_view/attendance_student_view.dart';
import 'package:project_pulse/features/attendance/presentation/pages/mark_attendance/mark_attendance_page.dart';
import 'package:project_pulse/features/main/presentation/pages/no_records_found.dart';
import 'package:project_pulse/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:project_pulse/features/auth/presentation/pages/login_page.dart';
import 'package:project_pulse/features/auth/presentation/pages/signup_page.dart';
import 'package:project_pulse/features/main/presentation/cubits/current_and_upcoming_classes/current_and_upcoming_classes_cubit.dart';
import 'package:project_pulse/features/main/presentation/pages/courses_page.dart';
import 'package:project_pulse/features/main/presentation/pages/home_page.dart';
import 'package:project_pulse/features/main/presentation/pages/schedule_page.dart';
import 'package:project_pulse/features/main/presentation/pages/student_detail_page.dart';
import 'package:project_pulse/features/notifications/presentation/pages/notifications_page.dart';
import 'package:project_pulse/features/settings/presentation/pages/app_settings.dart';
import 'package:project_pulse/features/settings/presentation/pages/profile_page.dart';
import 'package:project_pulse/init_dependencies.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
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
        // // for main
        // BlocProvider(
        //   create: (_) => serviceLocator<MainBloc>(),
        // ),
        BlocProvider(create: (_) => serviceLocator<StudentBloc>()),
        BlocProvider(create: (_) => serviceLocator<FacultyBloc>()),
        BlocProvider(create: (_) => serviceLocator<ClassBloc>()),
        BlocProvider(create: (_) => serviceLocator<DepartmentBloc>()),
        BlocProvider(create: (_) => serviceLocator<BatchBloc>()),
        BlocProvider(create: (_) => serviceLocator<CourseBloc>()),
        BlocProvider(create: (_) => serviceLocator<AttendanceBloc>()),
        BlocProvider(create: (_) => serviceLocator<AttendanceReportBloc>()),
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

          // College Database
          // FIXME: User should be able to view the college database only if he is an admin, otherwise limited access should be provided
          case '/college_database':
            return MaterialPageRoute(
                builder: (context) => const CollegeDatabase());
          case '/batch_list':
            return MaterialPageRoute(builder: (context) => const BatchList());
          case '/department_list':
            return MaterialPageRoute(
                builder: (context) => const DepartmentList());
          case '/class_list':
            return MaterialPageRoute(builder: (context) => const ClassList());
          case '/student_list':
            return MaterialPageRoute(builder: (context) => const StudentList());
          case '/faculty_list':
            return MaterialPageRoute(builder: (context) => const FacultyList());
          case '/course_list':
            return MaterialPageRoute(builder: (context) => const CoursesList());

          // Attendance
          case '/attendance':
            return MaterialPageRoute(
                builder: (context) => const AttendanceMain());

          case '/attendance/mark_attendance':
            return MaterialPageRoute(
              builder: (context) => MarkAttendancePage(
                classData: (settings.arguments as Class),
              ),
            );
          case '/attendance/manual_mark_attendance_class_list':
            return MaterialPageRoute(
                builder: (context) =>
                    const ManualMarkAttendanceAllClassesList());
          case '/attendence/student_subject_attendance_details':
            return MaterialPageRoute(
              builder: (context) => StudentSubjectAttendanceDetailPage(
                params: (settings.arguments
                    as StudentSubjectAttendanceDetailsParams),
              ),
            );
          case '/student_details':
            return MaterialPageRoute(
              builder: (context) => StudentDetailPage(
                student: (settings.arguments as Student),
              ),
            );

          // Attendance Class Report
          case '/attendance/class_report_class_list':
            return MaterialPageRoute(
                builder: (context) => const AttendanceClassReport());
          case '/attendance/class_report_class_list/student_list':
            return MaterialPageRoute(
              builder: (context) => AttendanceClassReportStudentList(
                classData: (settings.arguments as Class),
              ),
            );
          case '/attendance/class_report_class_list/student_list/student_detail_with_date':
            return MaterialPageRoute(
              builder: (context) => StudentDetailPageWithDate(
                student: (settings.arguments as Student),
              ),
            );
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
