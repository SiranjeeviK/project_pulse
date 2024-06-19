import 'package:flutter/material.dart';
import 'package:project_pulse/core/theme/light_pallete.dart';
import 'package:project_pulse/features/main/domain/entities/course.dart';

class CourseDetail extends StatelessWidget {
  final Course course;
  const CourseDetail({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(course.courseName,
                style: Theme.of(context).textTheme.titleMedium),
            Text(
              course.courseCode,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Text(
              course.description,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Text(
              "Semester: " + course.semester.toString(),
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                // Some Oval tags
                courseLabTag(),
                if (course.isAdditional)
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: LightPallete.accent1,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Text(
                      'Additional',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8.0),
            const Divider(),
            Text(
              // TODO: Fetch teacher name from teacherId
              "Taught by: " + course.teacherId,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }

  Widget courseLabTag() {
    return Container(
      padding: const EdgeInsets.all(4.0),
      margin: const EdgeInsets.only(right: 4.0),
      decoration: BoxDecoration(
        color: course.isLab ? LightPallete.success : LightPallete.error,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        course.isLab ? 'Lab' : 'Theory',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
