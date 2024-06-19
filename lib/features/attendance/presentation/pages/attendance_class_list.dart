import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/class_item.dart';
import 'package:project_pulse/features/main/presentation/bloc/main_bloc.dart';

class AttendanceClassList extends StatelessWidget {
  const AttendanceClassList({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MainBloc>().add(FetchAllClasses());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Class View'),
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
                  } else if (state is MainLoaded) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.data.length,
                      itemBuilder: (context, index) {
                        final classData = state.data[index];
                        return ClassItem(
                          classData: classData,
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
