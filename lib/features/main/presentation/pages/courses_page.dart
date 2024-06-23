import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:project_pulse/features/main/presentation/bloc/course_bloc/course_bloc.dart';
import 'package:project_pulse/features/main/presentation/widgets/course_detail.dart';

class CoursesPage extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const CoursesPage());
  const CoursesPage({super.key});

  Future<void> _refreshCoursesWithClassCode(BuildContext context) async {
    final state = context.read<AppUserCubit>().state;
    if (state is AppUserLoggedIn) {
      final classCode = state.user.classCode;
      if (classCode != '') {
        context
            .read<CourseBloc>()
            .add(FetchCoursesByClassCode(classCode: classCode));
      } else {
        context.read<CourseBloc>().add(FetchAllCourses());
      }
    } else {
      context.read<CourseBloc>().add(FetchAllCourses());
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.read<AppUserCubit>().state;
    if (state is AppUserLoggedIn) {
      _refreshCoursesWithClassCode(context);
    } else {
      return const Scaffold(
        body: Center(
          child: Text('Please login to view courses'),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Courses'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RefreshIndicator(
          onRefresh: () => _refreshCoursesWithClassCode(context),
          child: BlocBuilder<CourseBloc, CourseState>(
            builder: (context, state) {
              if (state is CourseLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is CourseListByClassCodeLoaded) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    final course = state.data[index];
                    print(course);
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
