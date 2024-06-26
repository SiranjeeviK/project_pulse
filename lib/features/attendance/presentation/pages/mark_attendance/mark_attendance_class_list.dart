import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/mark_attendance/mark_attendance_class_item.dart';
import 'package:project_pulse/features/main/presentation/bloc/class_bloc/class_bloc.dart';

class MarkAttendanceClassList extends StatelessWidget {
  const MarkAttendanceClassList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ClassBloc>().add(FetchAllClasses());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mark Attendance Class list'),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<ClassBloc, ClassState>(
              builder: (context, state) {
                if (state is ClassLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is ClassLoaded) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.data.length,
                    itemBuilder: (context, index) {
                      final classData = state.data[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, '/attendance/mark_attendance',
                              // FIXME: classData is not enough for attendance, we need map data
                              arguments: classData);
                        },
                        child: MarkAttendanceClassItem(
                          // TODO: Create new ClassItem widget
                          classData: classData,
                        ),
                      );
                    },
                  );
                } else if (state is ClassFailure) {
                  return Center(
                    child: Text(state.message),
                  );
                } else {
                  return Container();
                }
              },
            )),
      ),
    );
  }
}
