import 'package:flutter/material.dart';
import 'package:project_pulse/core/common/widgets/user_avatar.dart';
import 'package:project_pulse/core/theme/light_pallete.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';

class AttendanceStudentItem extends StatefulWidget {
  final Student student;
  final String initialStatus; // Initial status for attendance
  final void Function(String rollNo, String status) onAttendanceMarked;
  const AttendanceStudentItem({
    super.key,
    required this.student,
    required this.initialStatus,
    required this.onAttendanceMarked,
  });

  @override
  State<AttendanceStudentItem> createState() => _AttendanceStudentItemState();
}

class _AttendanceStudentItemState extends State<AttendanceStudentItem> {
  late String _attendanceStatus; // Local state to hold attendance status

  @override
  void initState() {
    super.initState();
    _attendanceStatus =
        widget.initialStatus; // Initialize _attendanceStatus in initState
  }

  void _markAttendance(String status) {
    setState(() {
      _attendanceStatus = status; // Update local state
    });
    widget.onAttendanceMarked(widget.student.rollNo,
        _attendanceStatus); // Call the callback with new status
    print(
        "Marking attendance for ${widget.student.rollNo} as $_attendanceStatus");
  }

  Color _getCardColor() {
    switch (_attendanceStatus) {
      case "present":
        return Colors.green[100]!; // Light green color for present
      case "late":
        return Colors.orange[100]!; // Light orange color for late
      case "absent":
        return Colors.red[100]!; // Light red color for absent
      case "on_duty":
        return Colors.yellow[100]!; // Light yellow color for on duty
      default:
        return Colors.grey[100]!; // Default color if no status is matched
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _getCardColor(),
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.student.name,
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text(widget.student.rollNo,
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text(widget.student.registerNo,
                                  style:
                                      Theme.of(context).textTheme.labelSmall),
                              // Attendance Status
                              Row(
                                children: [
                                  Text('Status: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                  Text(_attendanceStatus.toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                ],
                              ),
                            ],
                          ),
                          UserAvatar(
                            user: widget.student,
                            radius: 30,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Beautiful Buttons for Present, Absent, On-Duty(OD)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () => _markAttendance("present"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: LightPallete.success),
                              child: const Text('Present')),
                          ElevatedButton(
                            onPressed: () => _markAttendance("absent"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: LightPallete.error),
                            child: const Text('Absent'),
                          ),
                          ElevatedButton(
                            onPressed: () => _markAttendance("on_duty"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: LightPallete.warning),
                            child: const Text('OD'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
