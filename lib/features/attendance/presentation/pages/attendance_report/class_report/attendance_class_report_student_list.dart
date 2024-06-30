import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/main/domain/entities/class.dart';
import 'package:project_pulse/features/main/presentation/bloc/student_bloc/student_bloc.dart';
import 'package:project_pulse/features/main/presentation/widgets/items/student_item.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';

/// Currently used in Attendance Class Report
///
/// This page is used to view attendance for a particular class.
/// It displays the class details and the list of students in that class.
class AttendanceClassReportStudentList extends StatefulWidget {
  final Class classData;
  const AttendanceClassReportStudentList({super.key, required this.classData});

  @override
  State<AttendanceClassReportStudentList> createState() =>
      _ViewAttendancePageState();
}

class _ViewAttendancePageState extends State<AttendanceClassReportStudentList> {
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
        title: const Text('View Attendance'),
      ),
      body: Column(
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
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text(
                                widget.classData.classCode,
                                style: Theme.of(context).textTheme.labelSmall,
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
                decoration: const InputDecoration(
                    labelText: 'Search Students',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    hintText: 'Enter student name, roll no, etc...,'),
              )),
          // Students List
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RefreshIndicator(
                onRefresh: () => _refreshStudents(context),
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
                              Navigator.pushNamed(context,
                                  '/attendance/class_report_class_list/student_list/student_detail_with_date',
                                  arguments: student);
                            },
                            // Student Item navigate to a page with student details
                            child: StudentItem(
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
            ),
          ),
        ],
      ),
    );
  }
}
