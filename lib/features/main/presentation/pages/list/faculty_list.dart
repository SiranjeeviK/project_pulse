import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/main/domain/entities/faculty.dart';
import 'package:project_pulse/features/main/presentation/bloc/faculty_bloc/faculty_bloc.dart';
import 'package:project_pulse/features/main/presentation/widgets/items/faculty_item.dart';

class FacultyList extends StatefulWidget {
  const FacultyList({super.key});

  @override
  State<FacultyList> createState() => _FacultyListState();
}

class _FacultyListState extends State<FacultyList> {
  final TextEditingController _searchController = TextEditingController();
  List<Faculty> _faculties = [];
  List<Faculty> _filteredFaculties = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_searchFaculties);
    // _filteredFaculties = _faculties;
    _fetchInitialData();
  }

  void _fetchInitialData() {
    context.read<FacultyBloc>().add(FetchAllFaculties());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _searchFaculties() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      setState(() {
        _filteredFaculties = _faculties.where((faculty) {
          final searchIn = [
            faculty.name.toLowerCase(),
            faculty.classCode.toLowerCase(),
            // faculty.registerNo.toLowerCase(),
            // faculty.rollNo.toLowerCase(),
          ];
          return searchIn
              .any((element) => element.contains(query.toLowerCase()));
        }).toList();
      });
    } else {
      setState(() {
        _filteredFaculties = _faculties;
      });
    }
  }

  Future<void> _refreshFaculties(BuildContext context) async {
    context.read<FacultyBloc>().add(FetchAllFaculties());
    setState(() {
      _searchController.clear();
    });
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();

  //   final state = BlocProvider.of<FacultyBloc>(context).state;

  //   if (state is! FacultyLoaded) {
  //     context.read<FacultyBloc>().add(FetchAllFaculties());
  //   } else {
  //     _faculties = state.data;
  //     print(state.data.length);

  //     _filteredFaculties = _faculties;
  //     setState(() {});
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    //context.watch<FacultyBloc>().add(FetchAllFaculties());
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
              hintText: 'Search Faculties',
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RefreshIndicator(
            onRefresh: () => _refreshFaculties(context),
            child: BlocBuilder<FacultyBloc, FacultyState>(
              builder: (context, state) {
                if (state is FacultyLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is FacultyLoaded) {
                  _faculties = state.data;
                  _filteredFaculties = _searchController.text.isEmpty
                      ? _faculties
                      : _filteredFaculties;
                  // WidgetsBinding.instance.addPostFrameCallback((_) {
                  //   setState(() {});
                  // });
                  if (_filteredFaculties.isEmpty || _faculties.isEmpty) {
                    return Center(
                      child: GestureDetector(
                          onTap: () => _refreshFaculties(context),
                          child: const Text(
                              'No Faculties Found\nPull or Tap to Refresh')),
                    );
                  }

                  // sort
                  _filteredFaculties
                      .sort((a, b) => a.rollNo.compareTo(b.rollNo));
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: _filteredFaculties.length,
                    itemBuilder: (context, index) {
                      final faculty = _filteredFaculties[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/faculty_details',
                              arguments: faculty);
                        },
                        child: FacultyItem(
                          faculty: faculty,
                        ),
                      );
                    },
                  );
                } else if (state is FacultyFailure) {
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
