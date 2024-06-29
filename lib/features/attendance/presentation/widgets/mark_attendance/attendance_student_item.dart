import 'package:flutter/material.dart';
import 'package:project_pulse/core/common/widgets/user_avatar.dart';
import 'package:project_pulse/core/theme/light_pallete.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';

class AttendanceStudentItem extends StatelessWidget {
  final Student student;
  const AttendanceStudentItem({
    super.key,
    required this.student,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                              Text(student.name,
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text(
                                student.rollNo,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                student.registerNo,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),

                              // Attendance Status
                              Row(
                                children: [
                                  Text(
                                    'Status: ',
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  Text(
                                    // student.attendanceStatus,
                                    "Present",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          UserAvatar(
                            user: student,
                            radius: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      // Beautiful Buttons for Present, Absent, On-Duty(OD)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: LightPallete.success,
                              ),
                              child: const Text('Present')),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: LightPallete.error),
                            child: const Text('Absent'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
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
