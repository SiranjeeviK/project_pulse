import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/attendance_current_class.dart';
import 'package:project_pulse/features/main/domain/entities/class.dart';
import 'package:project_pulse/features/main/presentation/bloc/student_bloc/student_bloc.dart';
import 'package:project_pulse/features/main/presentation/widgets/items/student_item.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';

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

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_searchStudents);
    // _filteredStudents = _students;
    _fetchInitialData();
  }

  void _fetchInitialData() {
    context
        .read<StudentBloc>()
        .add(FetchStudentsByClassCode(widget.classData.classCode));
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

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

  Future<void> _refreshStudents(BuildContext context) async {
    context
        .read<StudentBloc>()
        .add(FetchStudentsByClassCode(widget.classData.classCode));
    setState(() {
      _searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mark Attendance'),
      ),
      body: RefreshIndicator(
        onRefresh: () => _refreshStudents(context),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                            // TOTAL COUNT
                            Flexible(
                              child: Text(
                                "Total Students: ${widget.classData.totalStudents.toString()}",
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
                        AttendanceCurrentClass(
                            classCode: widget.classData.classCode),
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
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(),
                        hintText: 'Enter student name, roll no, etc...,'),
                  )),
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
                      // WidgetsBinding.instance.addPostFrameCallback((_) {
                      //   setState(() {});
                      // });
                      if (_filteredStudents.isEmpty || _students.isEmpty) {
                        return Center(
                          child: GestureDetector(
                              onTap: () => _refreshStudents(context),
                              child: const Text(
                                  'No Students Found\nPull or Tap to Refresh')),
                        );
                      }

                      // sort
                      _filteredStudents
                          .sort((a, b) => a.rollNo.compareTo(b.rollNo));
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: _filteredStudents.length,
                        itemBuilder: (context, index) {
                          final student = _filteredStudents[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/student_details',
                                  arguments: student);
                            },
                            child: StudentItem(
                              //TODO: Create new StudentItem widget
                              student: student,
                            ),
                          );
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
