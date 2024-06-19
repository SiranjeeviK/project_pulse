import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/department_item.dart';
import 'package:project_pulse/features/main/domain/entities/department.dart';
import 'package:project_pulse/features/main/presentation/bloc/main_bloc.dart';

class AttendanceDepartmentList extends StatelessWidget {
  const AttendanceDepartmentList({super.key});
  // FIXME: English department should not be displayed
  @override
  Widget build(BuildContext context) {
    context.read<MainBloc>().add(FetchAllDepartments());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Department View'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<MainBloc, MainState>(
                builder: (context, state) {
                  if (state is MainLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is MainLoaded<List<Department>>) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.data.length,
                      itemBuilder: (context, index) {
                        final department = state.data[index];
                        return DepartmentItem(
                          department: department,
                        );
                      },
                    );
                  } else if (state is MainFailure) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else {
                    return Container();
                  }
                },
              )),
        ),
      ),
    );
  }
}

Future<List<Department>> getDepartments() async {
  return [];
}
