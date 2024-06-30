// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:project_pulse/core/utils/my_schedule.dart';
import 'package:project_pulse/core/utils/show_snackbar.dart';
import 'package:project_pulse/features/attendance/domain/entities/student_attendance.dart';
import 'package:project_pulse/features/attendance/domain/get_attendance_if_already_marked.dart';
import 'package:project_pulse/features/attendance/domain/usecases/mark_attendance.dart';
import 'package:project_pulse/features/attendance/presentation/bloc/attendance/attendance_bloc.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/attendance_current_class.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/mark_attendance/attendance_student_item.dart';
import 'package:project_pulse/features/main/domain/entities/class.dart';
import 'package:project_pulse/features/main/domain/entities/class_schedule.dart';
import 'package:project_pulse/features/main/presentation/bloc/student_bloc/student_bloc.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';
import 'package:project_pulse/features/main/presentation/cubits/current_and_upcoming_classes/current_and_upcoming_classes_cubit.dart';

/// Currently used in Manual Attendance
///
/// This page is used to mark attendance for a particular class.
/// It displays the class details and the list of students in that class.
class MarkAttendancePage extends StatefulWidget {
  final Class classData;
  const MarkAttendancePage({super.key, required this.classData});

  @override
  State<MarkAttendancePage> createState() => _MarkAttendancePageState();
}

class _MarkAttendancePageState extends State<MarkAttendancePage> {
  final TextEditingController _searchController = TextEditingController();
  List<Student> _students = [];
  List<Student> _filteredStudents = [];
  bool oldAttendanceLoaded = false;
  bool allPresent = false;

  late List<StudentAttendance> _studentAttendances = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_searchStudents);
    _studentAttendances = [];
    _fetchInitialData();
  }

  void _fetchInitialData() {
    context
        .read<StudentBloc>()
        .add(FetchStudentsByClassCode(widget.classData.classCode));
  }

  void _fetchAttendanceData(ClassSchedule currentClass) {
    context.read<AttendanceBloc>().add(ResetAttendance());
    context.read<AttendanceBloc>().add(
          //it is used to get the attendance data for selected class if already marked
          GetAttendanceByDatePeriodMappingId(
            checkAttendanceAlreadyMarkedParams:
                CheckAttendanceAlreadyMarkedParams(
              date: DateTime.now(),
              nthPeriod: currentClass.currentNo,
              mappingId: currentClass.currentClassMappingId,
            ),
          ),
        );

    final state = context.read<AttendanceBloc>().state;
    if (state is AttendanceAlreadyMarked && !oldAttendanceLoaded) {
      oldAttendanceLoaded = true;
      _studentAttendances =
          state.attendanceList //loading the old attendance data
              .map(
                (attendance) => StudentAttendance(
                  rollNo: attendance.rollNo,
                  studentId: attendance.studentId,
                  status: attendance.status,
                ),
              )
              .toList();
      setState(() {});
    }
  }

  // OK
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // OK
  void _searchStudents() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      setState(() {
        _filteredStudents = _students.where((student) {
          final searchIn = [
            student.name.toLowerCase(),
            student.classCode.toLowerCase(),
            student.registerNo.toLowerCase(),
            student.rollNo.toLowerCase(),
          ];
          return searchIn
              .any((element) => element.contains(query.toLowerCase()));
        }).toList();
      });
    } else {
      setState(() {
        _filteredStudents = _students;
      });
    }
  }

  //OK
  Future<void> _refreshStudents(BuildContext context) async {
    setState(() {
      context
          .read<StudentBloc>()
          .add(FetchStudentsByClassCode(widget.classData.classCode));
      _searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    context.read<AttendanceBloc>().add(ResetAttendance());
    final userState =
        context.read<AppUserCubit>().state; //it is used to get the user id
    final attendanceState = context
        .read<AttendanceBloc>()
        .state; //it is used to get the attendance state

    final classScheduleState = context
        .read<CurrentAndUpcomingClassesCubit>()
        .state; //it is used to get the class schedule state
    if (classScheduleState is CurrentAndUpcomingClassesError) {
      //if there is an error in class schedule state
      return Center(
        child: Text(classScheduleState.message),
      );
    }
    if (classScheduleState is CurrentAndUpcomingClassesLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    late ClassSchedule currentClass;
    if (classScheduleState is CurrentAndUpcomingClassesLoaded) {
      currentClass = mySchedule(
          classScheduleState.currentClass, widget.classData.classCode);
    }
    _fetchAttendanceData(
        currentClass); //it is used to get the attendance data for selected class
    void onAttendanceMarked(String rollNo, String status) {
      setState(() {
        final index = _studentAttendances
            .indexWhere((element) => element.rollNo == rollNo);
        if (index != -1) {
          _studentAttendances[index].status = status;
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Mark Attendance of ${currentClass.classCode}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('[from fab] $_studentAttendances');
          if (_studentAttendances.isEmpty) {
            showSnackbar(context, 'No students to mark attendance');
            return;
          }
          if (_studentAttendances.any((element) => element.status.isEmpty)) {
            showSnackbar(context, 'Please mark attendance for all students');
            return;
          }
          if (!_checkIfClassChanged(
              context, currentClass.currentClassEndTime)) {
            context.read<AttendanceBloc>().add(
                  MarkTheAttendance(
                    markAttendanceParams: MarkAttendanceParams(
                      date: DateTime.now(),
                      mapppingId: currentClass.currentClassMappingId,
                      nthPeriod: currentClass.currentNo,
                      studentAttendances: _studentAttendances,
                      facultyId: userState is AppUserLoggedIn
                          ? userState.user.id ==
                                  currentClass.currentClassFacultyId
                              ? userState.user.id
                              : null
                          : null,
                      remarks: null,
                      substituteFacultyId: userState is AppUserLoggedIn
                          ? userState.user.id !=
                                  currentClass.currentClassFacultyId
                              ? userState.user.id
                              : null
                          : null,
                    ),
                  ),
                );
            showSnackbar(context, 'Attendance marking...');

            if (attendanceState is AttendanceError) {
              showSnackbar(context, attendanceState.message);
            }
            // Navigator.pushNamed(context, '/mark_attendance_manual',
            //     arguments: widget.classData);
          }
        },
        child: const Icon(Icons.done),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          _checkIfClassChanged(context, currentClass.currentClassEndTime);
          return _refreshStudents(context);
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              // BUG: This class details is not refreshing when the class is changed

              // Class Details
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 2,
                  margin: const EdgeInsets.all(4.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.classData.className,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                  Text(
                                    widget.classData.classCode,
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  Text(
                                    "Department ID: ${widget.classData.departmentId.toString()}", //TODO: Fetch department name from departmentId
                                  )
                                ],
                              ),
                            ),
                            // TOTAL COUNT & CURRENT CLASS DETAILS
                            Flexible(
                              child: Text(
                                "Total Students: ${widget.classData.totalStudents.toString()}\n${currentClass.currentNo}th Period\n${currentClass.currentClassStartTime.hour}:${currentClass.currentClassStartTime.minute} - ${currentClass.currentClassEndTime.hour}:${currentClass.currentClassEndTime.minute}",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          child: BlocBuilder<AttendanceBloc, AttendanceState>(
                            builder: (context, state) {
                              String attendanceStatus = '-';
                              if (state is AttendanceError) {
                                return Text(state.message);
                              }
                              if (state is AttendanceLoading) {
                                attendanceStatus = 'Loading...';
                              } else if (state is AttendanceMarked) {
                                attendanceStatus = 'Attendance Marked';
                              } else if (state is AttendanceAlreadyMarked) {
                                attendanceStatus = 'Attendance Already Marked';
                              } else if (state is AttendanceLoaded) {
                                if (state.attendanceList.isEmpty) {
                                  attendanceStatus = 'Attendance Not Marked';
                                } else {
                                  attendanceStatus = 'Attendance Marked';
                                }
                              }
                              // Now, this Text widget will rebuild whenever the AttendanceBloc state changes
                              return Text(
                                'Status: $attendanceStatus',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                      color: state is AttendanceMarked ||
                                              state is AttendanceAlreadyMarked
                                          ? Colors.green
                                          : Colors.red,
                                    ),
                              );
                            },
                          ),
                        ),
                        AttendanceCurrentClass(
                          classCode: widget.classData.classCode,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Search
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                      labelText:
                          'Search ${widget.classData.classCode} Students',
                      prefixIcon: const Icon(Icons.search),
                      border: const OutlineInputBorder(),
                      hintText: 'Enter student name, roll no, etc...,'),
                ),
              ),

              //a toggle for all present, if true it set all status as 'present' else ''
              Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  const Text('All Present'),
                  Checkbox(
                    value: allPresent,
                    onChanged: (value) {
                      setState(() {
                        allPresent = value!;
                        if (allPresent) {
                          _studentAttendances.forEach((element) {
                            element.status = 'present';
                          });
                        } else {
                          _studentAttendances.forEach((element) {
                            element.status = '';
                          });
                        }
                        allPresent = value;
                      });
                      print('[from all present] $_studentAttendances');
                    },
                  ),
                ],
              ),

              // Students List

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlocBuilder<StudentBloc, StudentState>(
                  builder: (context, state) {
                    if (state is StudentLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is ClassStudentListLoaded) {
                      _students = state.data;
                      _filteredStudents = _searchController.text.isEmpty
                          ? _students
                          : _filteredStudents;
                      if (_studentAttendances.isEmpty ||
                          _studentAttendances.length != _students.length) {
                        // Only initialize if empty
                        _studentAttendances = _students
                            .map(
                              (student) => StudentAttendance(
                                rollNo: student.rollNo,
                                studentId: student.id,
                              ),
                            )
                            .toList();
                      }
                      if (_filteredStudents.isEmpty || _students.isEmpty) {
                        return Center(
                          child: GestureDetector(
                            onTap: () => _refreshStudents(context),
                            child: const Text(
                                'No Students Found\nPull or Tap to Refresh'),
                          ),
                        );
                      }

                      // sort
                      _filteredStudents
                          .sort((a, b) => a.rollNo.compareTo(b.rollNo));
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _filteredStudents.length,
                        itemBuilder: (context, index) {
                          final student = _filteredStudents[index];
                          Widget studentItemWidget = GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/attendence/student_subject_attendance_details',
                                arguments:
                                    StudentSubjectAttendanceDetailsParams(
                                        student: student,
                                        classSchedule: currentClass),
                              );
                            },
                            child: AttendanceStudentItem(
                              key: ValueKey(student.rollNo),
                              student: student,
                              initialStatus: _studentAttendances
                                  .firstWhere((element) =>
                                      element.rollNo == student.rollNo)
                                  .status,
                              onAttendanceMarked: onAttendanceMarked,
                            ),
                          );

                          if (allPresent) {
                            studentItemWidget = IgnorePointer(
                              child: Opacity(
                                opacity: 0.5,
                                child: studentItemWidget,
                              ),
                            );
                          }

                          return studentItemWidget;
                        },
                      );
                    } else if (state is StudentFailure) {
                      return Center(
                        child: Text(state.message),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

bool _checkIfClassChanged(BuildContext context, DateTime currentClassEndTime) {
  currentClassEndTime = currentClassEndTime.add(const Duration(minutes: 5));
  if (DateTime.now().isAfter(currentClassEndTime)) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    showSnackbar(context, 'Class has ended. Cannot mark attendance now.');
    return true;
  }
  return false;
}

class StudentSubjectAttendanceDetailsParams {
  final Student student;
  final ClassSchedule classSchedule;
  const StudentSubjectAttendanceDetailsParams(
      {required this.student, required this.classSchedule});
}
