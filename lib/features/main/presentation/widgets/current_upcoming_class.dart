import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';

import 'package:project_pulse/core/theme/app_pallete.dart';
import 'package:project_pulse/core/theme/light_pallete.dart';
import 'package:project_pulse/core/utils/show_snackbar.dart';
import 'package:project_pulse/features/main/data/models/class_schedule_model.dart';
import 'package:project_pulse/features/main/domain/entities/class_schedule.dart';
import 'package:project_pulse/features/main/presentation/cubits/current_and_upcoming_classes/current_and_upcoming_classes_cubit.dart';
import 'package:project_pulse/features/main/presentation/widgets/time_table_bottom_sheet.dart';

class CurrentUpcomingClass extends StatefulWidget {
  final String classCode;
  const CurrentUpcomingClass({super.key, required this.classCode});

  @override
  State<CurrentUpcomingClass> createState() => _CurrentUpcomingClassState();
}

class _CurrentUpcomingClassState extends State<CurrentUpcomingClass> {
  @override
  void initState() {
    super.initState();
    context
        .read<CurrentAndUpcomingClassesCubit>()
        .getCurrentAndUpcomingClasses(widget.classCode);
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
            print(state.message);
          }
        },
        builder: (context, state) {
          if (state is CurrentAndUpcomingClassesLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return MaterialButton(
            onPressed: () => _onTapTimeTableBottomSheet(state),
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
                      ),
                      const SizedBox(height: 10),
                      Text(
                        state is CurrentAndUpcomingClassesLoaded
                            ? _mySchedule(state.currentClass, widget.classCode)
                                    ?.currentClass ??
                                '-'
                            : '-',
                        style: GoogleFonts.readexPro(
                            fontSize: 24, color: LightPallete.primaryText),
                      )
                    ],
                  ),

                  // upcoming class
                  Column(
                    children: [
                      Text(
                        'Upcoming',
                        style: GoogleFonts.readexPro(fontSize: 26),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        state is CurrentAndUpcomingClassesLoaded
                            ? _mySchedule(state.currentClass, widget.classCode)
                                    ?.upcomingClass ??
                                '-'
                            : '-',
                        style: GoogleFonts.readexPro(
                            fontSize: 24, color: LightPallete.primaryText),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onTapTimeTableBottomSheet(final state) async {
    if (state is CurrentAndUpcomingClassesLoaded) {
      print(state.currentClass);
    }
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
                    ? _findUrl(context, state.currentClass) //BUG
                    : 'about:blank') //TODO: Add the correct URL
            : const Text('Only supported on Android and iOS devices.');
      },
    ).then(
      (value) {
        // context
        //     .read<CurrentAndUpcomingClassesCubit>()
        //     .getCurrentAndUpcomingClasses(widget.classCode);
        if (mounted) setState(() {});
      },
    ).then((value) {
      showSnackbar(
        context,
        'Refreshing...',
      );
    }).then((onValue) {
      showSnackbar(context, 'Refreshed');
    });
  }
}

String _findUrl(BuildContext context, List<ClassSchedule> list) {
  String str = "";
  final state = context.read<AppUserCubit>().state;
  if (state is AppUserLoggedIn) {
    for (var c in list) {
      if (c == state.user.classCode) {
        str = c.timeTableUrl;
      }
    }
  }
  return str;
}

ClassSchedule? _mySchedule(List<ClassSchedule> currentClass, String classCode) {
  final schedule = currentClass.firstWhere(
    (element) => element.classCode == classCode,
    orElse: () => ClassScheduleModel(
      classCode: '',
      currentClass: '-',
      currentClassStartTime: DateTime.now(),
      currentClassEndTime: DateTime.now(),
      currentNo: 0,
      upcomingClass: '-',
      timeTableUrl: '',
      currentClassCourseCode: '',
      currentClassMappingId: 0,
      currentClassFacultyId: '',
    ),
  );
  print(schedule.classCode + ' ' + schedule.currentClass);
  return schedule;
}
