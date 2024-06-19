import 'package:flutter/material.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';

class StudentSearch extends SearchDelegate<Student> {
  final List<Student> students;

  StudentSearch(this.students);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(
            context,
            Student(
              id: '',
              email: '',
              name: '',
              profilePhotoUrl: '',
              role: '',
              phoneNumber: '',
              registerNo: '',
              rollNo: '',
              departmentName: '',
              section: '',
              semester: 0,
              graduationYear: 0,
              facultyId: '',
              designation: '',
              classCode: '',
              departmentCode: '',
            ));
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = students.where(
        (student) => student.name.toLowerCase().contains(query.toLowerCase()));

    return ListView(
      children: results
          .map((student) => ListTile(title: Text(student.name)))
          .toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = students.where((student) =>
        student.name.toLowerCase().startsWith(query.toLowerCase()));

    return ListView(
      children: suggestions
          .map((student) => ListTile(title: Text(student.name)))
          .toList(),
    );
  }
}
