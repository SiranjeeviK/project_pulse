import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/department_bloc/department_bloc.dart';
import 'package:project_pulse/features/main/presentation/widgets/items/department_item.dart';

class DepartmentList extends StatelessWidget {
  const DepartmentList({super.key});
  // FIXME: English department should not be displayed
  @override
  Widget build(BuildContext context) {
    context.read<DepartmentBloc>().add(FetchAllDepartments());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Department List'),
      ),
      body: Expanded(child: BlocBuilder<DepartmentBloc, DepartmentState>(
        builder: (context, state) {
          if (state is DepartmentLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DepartmentLoaded) {
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
          } else if (state is DepartmentFailure) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return Container();
          }
        },
      )),
    );
  }
}
