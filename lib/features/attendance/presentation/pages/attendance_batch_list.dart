import 'package:flutter/material.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/batch_item.dart';

class AttendanceBatchList extends StatelessWidget {
  const AttendanceBatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Batch'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BatchItem(
                    context: context,
                    batchName: '2021-2025',
                    pageRoute: '/attendance/class_list'),
                BatchItem(
                    context: context,
                    batchName: '2022-2026',
                    pageRoute: '/attendance/class_list'),
                BatchItem(
                    context: context,
                    batchName: '2023-2027',
                    pageRoute: '/attendance/class_list'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
