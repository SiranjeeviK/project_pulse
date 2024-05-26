import 'package:flutter/material.dart';
import 'package:project_pulse/core/theme/theme.dart';
import 'package:project_pulse/features/main/presentation/pages/courses_page.dart';
import 'package:project_pulse/features/main/presentation/pages/home_page.dart';
import 'package:project_pulse/features/main/presentation/pages/schedule_page.dart';
import 'package:project_pulse/features/notifications/presentation/pages/notifications_page.dart';
import 'package:project_pulse/features/settings/presentation/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project PULSE',
      theme: AppTheme.lightThemeMode,
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/courses': (context) => const CoursesPage(),
        '/schedule': (context) => const SchedulePage(),
        '/notifications': (context) => const NotificationsPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
