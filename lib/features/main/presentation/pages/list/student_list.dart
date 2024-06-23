import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/student_bloc/student_bloc.dart';
import 'package:project_pulse/features/main/presentation/widgets/items/student_item.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  final TextEditingController _searchController = TextEditingController();
  List<Student> _students = [];
  List<Student> _filteredStudents = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_searchStudents);
    // _filteredStudents = _students;
    _fetchInitialData();
  }

  void _fetchInitialData() {
    context.read<StudentBloc>().add(FetchAllStudents());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _searchStudents() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      setState(() {
        _filteredStudents = _students.where((student) {
          final searchIn = [
            student.name.toLowerCase(),
            student.classCode.toLowerCase(),
            student.registerNo.toLowerCase(),
            student.rollNo.toLowerCase(),
          ];
          return searchIn
              .any((element) => element.contains(query.toLowerCase()));
        }).toList();
      });
    } else {
      setState(() {
        _filteredStudents = _students;
      });
    }
  }

  Future<void> _refreshStudents(BuildContext context) async {
    context.read<StudentBloc>().add(FetchAllStudents());
    setState(() {
      _searchController.clear();
    });
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();

  //   final state = BlocProvider.of<StudentBloc>(context).state;

  //   if (state is! StudentListLoaded) {
  //     context.read<StudentBloc>().add(FetchAllStudents());
  //   } else {
  //     _students = state.data;
  //     print(state.data.length);

  //     _filteredStudents = _students;
  //     setState(() {});
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    //context.watch<StudentBloc>().add(FetchAllStudents());
    return Scaffold(
      appBar: AppBar(
        title: Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.white,
            inputDecorationTheme: const InputDecorationTheme(
              border: InputBorder.none,
            ),
          ),
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: 'Search Students',
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RefreshIndicator(
            onRefresh: () => _refreshStudents(context),
            child: BlocBuilder<StudentBloc, StudentState>(
              builder: (context, state) {
                if (state is StudentLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is StudentListLoaded) {
                  _students = state.data;
                  _filteredStudents = _searchController.text.isEmpty
                      ? _students
                      : _filteredStudents;
                  // WidgetsBinding.instance.addPostFrameCallback((_) {
                  //   setState(() {});
                  // });
                  if (_filteredStudents.isEmpty || _students.isEmpty) {
                    return Center(
                      child: GestureDetector(
                          onTap: () => _refreshStudents(context),
                          child: const Text(
                              'No Students Found\nPull or Tap to Refresh')),
                    );
                  }

                  // sort
                  _filteredStudents
                      .sort((a, b) => a.rollNo.compareTo(b.rollNo));
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: _filteredStudents.length,
                    itemBuilder: (context, index) {
                      final student = _filteredStudents[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/student_details',
                              arguments: student);
                        },
                        child: StudentItem(
                          student: student,
                        ),
                      );
                    },
                  );
                } else if (state is StudentFailure) {
                  return Center(
                    child: Text(state.message),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
