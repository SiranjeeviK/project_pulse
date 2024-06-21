import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/utils/show_snackbar.dart';
import 'package:project_pulse/features/main/presentation/widgets/items/class_item.dart';
import 'package:project_pulse/features/main/domain/entities/class.dart';
import 'package:project_pulse/features/main/presentation/bloc/main_bloc.dart';

class AttendanceClassList extends StatelessWidget {
  const AttendanceClassList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MainBloc>().add(FetchAllClasses());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Class list'),
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
                  } else if (state is MainLoaded<List<Class>>) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.data.length,
                      itemBuilder: (context, index) {
                        final classData = state.data[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/attendance/mark_attendance',
                                arguments: classData);
                            print(classData);
                          },
                          child: ClassItem(
                            classData: classData,
                          ),
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
