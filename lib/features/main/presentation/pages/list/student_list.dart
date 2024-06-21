import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/main/presentation/widgets/items/student_item.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';
import 'package:project_pulse/features/main/presentation/bloc/main_bloc.dart';

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
    _filteredStudents = _students;
    _searchController.addListener(_searchStudents);
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

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final state = BlocProvider.of<MainBloc>(context).state;
    if (state is MainLoaded<List<Student>>) {
      _students = state.data;

      _filteredStudents = _students;
    }
  }

  @override
  Widget build(BuildContext context) {
    context.read<MainBloc>().add(FetchAllStudents());
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
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<MainBloc, MainState>(
            builder: (context, state) {
              if (state is MainLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is MainLoaded<List<Student>>) {
                if (_filteredStudents.isEmpty || _students.isEmpty) {
                  return const Center(
                    child: Text('No Students Found'),
                  );
                }
                // sort
                _filteredStudents.sort((a, b) => a.rollNo.compareTo(b.rollNo));
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
              } else if (state is MainFailure) {
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
    );
  }
}
