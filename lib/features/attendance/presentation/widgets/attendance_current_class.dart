import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project_pulse/core/theme/app_pallete.dart';
import 'package:project_pulse/core/theme/light_pallete.dart';
import 'package:project_pulse/features/main/presentation/cubits/current_and_upcoming_classes/current_and_upcoming_classes_cubit.dart';
import 'package:project_pulse/features/main/presentation/widgets/time_table_bottom_sheet.dart';

import '../../../../core/utils/my_schedule.dart';

/// This widget is used to display the current class details and the time table with a button to view the time table.
class AttendanceCurrentClass extends StatefulWidget {
  final String classCode;
  const AttendanceCurrentClass({super.key, required this.classCode});

  @override
  State<AttendanceCurrentClass> createState() => _AttendanceCurrentClassState();
}

class _AttendanceCurrentClassState extends State<AttendanceCurrentClass> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // webViewController.clearCache();
    // context.read<CurrentAndUpcomingClassesCubit>().close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      width: double.infinity,
      height: 120,
      decoration: const BoxDecoration(
          color: AppPallete.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: BlocConsumer<CurrentAndUpcomingClassesCubit,
          CurrentAndUpcomingClassesState>(
        listener: (context, state) {
          if (state is CurrentAndUpcomingClassesError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is CurrentAndUpcomingClassesLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // current class
                  Column(
                    children: [
                      Text(
                        'Now',
                        style: GoogleFonts.readexPro(
                          fontSize: 26,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        state is CurrentAndUpcomingClassesLoaded
                            ? mySchedule(state.currentClass, widget.classCode)
                                .currentClass
                            : '-',
                        style: GoogleFonts.readexPro(
                            fontSize: 24, color: LightPallete.primaryText),
                      )
                    ],
                  ),

                  Tooltip(
                    message: 'View Time Table',
                    child: IconButton(
                        onPressed: () => _onTapTimeTableBottomSheet(state),
                        icon: const Icon(Icons.table_view)),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onTapTimeTableBottomSheet(final state) async {
    print('Tap');
    await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      context: context,
      builder: (context) {
        return (Platform.isAndroid || Platform.isIOS)
            ? TimeTableBottomSheet(
                url: state is CurrentAndUpcomingClassesLoaded
                    ? state.currentClass[0].upcomingClass //BUG
                    : 'about:blank',
              ) //TODO: Add the correct URL
            : const Text('Only supported on Android and iOS devices.');
      },
    ).then(
      (value) {
        // context
        // .read<CurrentAndUpcomingClassesCubit>()
        // .getCurrentAndUpcomingClasses(widget.classCode);
        if (mounted) setState(() {});
      },
    );
  }
}
