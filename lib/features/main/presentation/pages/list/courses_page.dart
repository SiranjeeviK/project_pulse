import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/course_bloc/course_bloc.dart';
import 'package:project_pulse/features/main/presentation/widgets/course_detail.dart';

class CoursesPage extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const CoursesPage());
  const CoursesPage({super.key});

  Future<void> _refreshCourses(BuildContext context) async {
    context.read<CourseBloc>().add(FetchAllCourses());
  }

  @override
  Widget build(BuildContext context) {
    context.read<CourseBloc>().add(FetchAllCourses());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RefreshIndicator(
          onRefresh: () => _refreshCourses(context),
          child: BlocBuilder<CourseBloc, CourseState>(
            builder: (context, state) {
              if (state is CourseLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is CourseLoaded) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    final course = state.data[index];
                    return CourseDetail(course: course);
                  },
                );
              } else if (state is CourseFailure) {
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
