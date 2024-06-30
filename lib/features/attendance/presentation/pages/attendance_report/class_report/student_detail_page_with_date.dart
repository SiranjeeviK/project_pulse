// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';
import 'package:project_pulse/features/attendance/presentation/bloc/attendance_report/attendance_report_bloc.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/attendance_report/basic_student_info.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';

/// Displays the details of the student
class StudentDetailPageWithDate extends StatefulWidget {
  final Student student;
  const StudentDetailPageWithDate({super.key, required this.student});

  @override
  State<StudentDetailPageWithDate> createState() =>
      _StudentDetailPageWithDateState();
}

class _StudentDetailPageWithDateState extends State<StudentDetailPageWithDate> {
  final TextEditingController _dateController =
      TextEditingController(text: DateTime.now().toString().split(" ")[0]);
  late List<Attendance> _attendanceList = [];
  late AttendanceReportState state;

  @override
  void initState() {
    super.initState();
    state = context.read<AttendanceReportBloc>().state;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Detail'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BasicStudentInfo(student: widget.student),
              SizedBox(
                height: 20,
              ),
              // Date Picker Dialog
              Text('Select Date'),
              SizedBox(
                height: 10,
              ),
              // Date Picker Input
              TextField(
                controller: _dateController,
                decoration: InputDecoration(
                  hintText: 'Select Date',
                  prefixIcon: Icon(Icons.calendar_today),
                ),
                readOnly: true,
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2022),
                    lastDate: DateTime.now(),
                  );
                  setState(
                    () {
                      _dateController.text = date.toString().split(" ")[0];
                    },
                  );
                },
              ),

              SizedBox(
                height: 20,
              ),

              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    List<int> date = _dateController.text.split("-").map((e) {
                      return int.parse(e);
                    }).toList();
                    context.read<AttendanceReportBloc>().add(
                          FetchStudentAttendanceUsingDate(
                            widget.student.rollNo,
                            DateTime(date[0], date[1], date[2]),
                          ),
                        );
                  },
                  child: Text('Submit'),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // Attendance Report for the selected date in Table format (Period No, Mappping ID, Course Name, Attendance Status)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: BlocBuilder<AttendanceReportBloc, AttendanceReportState>(
                  builder: (context, state) {
                    if (state is AttendanceReportLoading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is AttendanceReportLoaded) {
                      print('Attendance List: ${state.attendanceList}');
                      _attendanceList = state.attendanceList;
                      return DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text('Period No'),
                          ),
                          DataColumn(
                            label: Text('Mapping ID'),
                          ),
                          DataColumn(
                            label: Text('Course Name'),
                          ),
                          DataColumn(
                            label: Text('Attendance Status'),
                          ),
                        ],
                        rows: _attendanceList
                            .map(
                              (attendance) => DataRow(
                                cells: <DataCell>[
                                  DataCell(
                                    Text(attendance.nthPeriod.toString()),
                                  ),
                                  DataCell(
                                    Text(attendance.mapppingId.toString()),
                                  ),
                                  DataCell(
                                    Text(attendance.remarks!),
                                  ),
                                  DataCell(
                                    Text(attendance.status),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      );
                    } else if (state is AttendanceReportFailure) {
                      return Center(
                        child: Text(state.message),
                      );
                    }
                    return Container();
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
