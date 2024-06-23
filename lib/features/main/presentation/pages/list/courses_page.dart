import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/main/domain/entities/course.dart';
import 'package:project_pulse/features/main/presentation/bloc/main_bloc/main_bloc.dart';
import 'package:project_pulse/features/main/presentation/widgets/course_detail.dart';

class CoursesPage extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const CoursesPage());
  const CoursesPage({super.key});

  Future<void> _refreshCourses(BuildContext context) async {
    context.read<MainBloc>().add(FetchAllCourses());
  }

  @override
  Widget build(BuildContext context) {
    context.read<MainBloc>().add(FetchAllCourses());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RefreshIndicator(
          onRefresh: () => _refreshCourses(context),
          child: BlocBuilder<MainBloc, MainState>(
            builder: (context, state) {
              if (state is MainLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is MainLoaded<List<Course>>) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    final course = state.data[index];
                    return CourseDetail(course: course);
                  },
                );
              } else if (state is MainFailure) {
                return Center(
                  child: Text(state.message),
                );
              }
              // Add this to handle the initial state
              else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}
