import 'package:flutter/material.dart';
import 'package:project_pulse/core/theme/app_pallete.dart';

class AttendanceCurrentClass extends StatelessWidget {
  const AttendanceCurrentClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      height: 120,
      decoration: const BoxDecoration(
          color: AppPallete.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
