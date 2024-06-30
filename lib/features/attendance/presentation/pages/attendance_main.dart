// If its student user, they will be redirected to the attendance student view page
// If its faculty user, then it will display things as follows:

// 2. Today's classes
// Display all the classes that are scheduled for today

// 3. All Attendance Report
// All the below options are available for admin
// 3.1 Attendance report of all batches (Available for admins and HODs(HODs can view only their department students attendance report))
// it will display the attendance report of currrent 4 years students
// eg: (2023-2027, 2022-2026, 2021-2025, 2020-2024) and an button for archive
// 3.2 Attendance report of all departments (Available for admins and HODs(HODs can view only their department students attendance report))
// eg: IT, CSE, ECE, EEE, CIVIL, MECH, AIDS, AIML, BME, BT, FOOD, AGRI (for admins)
// eg IT department (for IT HOD)
// Available
// 3.3 Attendance report of all classes (Available for admins and HODs(HODs can view only their department students attendance report))
// eg: first year (IT-A, IT-B, IT-C), second year (IT-A, IT-B), third year (IT-A), fourth year (IT-A)
// 3.4 Attendance report of all students (Available for admins and HODs(HODs can view only their department students attendance report), Faculty-Class Advisor can view only their class students attendance report)
// search bar to search the student by name or register number or roll number

// 4. Attendance Report of a student (available for admins, HODs, Faculty-Class Advisor, and that student)
// It will display the attendance report of the student for the current semester
// 4.1. [ Overall Report ] It will display the overall attendance report of the student
// 4.2. [ Subject Wise Report ] It will display the subject wise attendance report of the student
// 4.3. [ Date Wise Report ] It will display the date wise attendance report of the student
// 4.4. [ Monthly Report ] It will display the monthly attendance report of the student
// 4.5. [ All Semesters Report ] It will display the attendance report of the student for all the semesters

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/attendance_current_class.dart';
import 'package:project_pulse/features/main/presentation/widgets/feature_item.dart';

class AttendanceMain extends StatelessWidget {
  const AttendanceMain({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<AppUserCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Attendance'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Since this page will be only accessed by faculty, we can display the current class here
                const Text(
                    'Todays Class'), //Applicable only for that period teaching faculty
                const SizedBox(height: 10),

                // 1. Current class
                // 1.1. If the class is ongoing, then the attendance of the students in the class is displayed
                // 1.1.a [ Mark Attendance ] The Respective faculty can mark the attendance of the students for that period
                // 1.1.b [ Attendance Report ] The Respective faculty can view the attendance of the students for that period
                // 1.2. [ No Class Schdeuled ] If the class is not ongoing, it display there is no class going on
                if (state is AppUserLoggedIn)
                  AttendanceCurrentClass(
                    classCode: state.user.classCode,
                  ),

                const SizedBox(height: 10),
                Center(
                  child: TextButton(
                    onPressed: () {
                      // Navigate to the mark attendance page
                      Navigator.pushNamed(context,
                          '/attendance/manual_mark_attendance_class_list');
                      // '/attendance/manual_select_course_class_mapping');
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          Theme.of(context).colorScheme.secondary),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('Manually Mark Attendance'),
                    ),
                  ),
                ), //Substitute faculty can mark the attendance of the students for that period

                const SizedBox(
                  height: 20,
                ),

                const Text(
                  'Attendance Report',
                ),

                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: FeatureItem(
                    context: context,
                    icon: Icons.topic,
                    label: 'Batch Report',
                    pageRoute: '/attendance/batch_list',
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: FeatureItem(
                    context: context,
                    icon: Icons.school_rounded,
                    label: 'Department Report',
                    pageRoute: '/attendance/department_list',
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: FeatureItem(
                    context: context,
                    icon: Icons.class_,
                    label: 'Class Report',
                    pageRoute: '/attendance/class_report_class_list',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: FeatureItem(
                    context: context,
                    icon: Icons.people,
                    label: 'Student Report',
                    // pageRoute: '../../../main/presentation/pages/list/student_list.dart',
                    pageRoute: '/attendance/student_list',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
