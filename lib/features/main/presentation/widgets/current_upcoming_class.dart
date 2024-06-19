import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project_pulse/core/constants/constants.dart';
import 'package:project_pulse/core/theme/app_pallete.dart';
import 'package:project_pulse/core/theme/light_pallete.dart';
import 'package:project_pulse/core/utils/show_snackbar.dart';
import 'package:project_pulse/features/main/presentation/cubits/current_and_upcoming_classes/current_and_upcoming_classes_cubit.dart';
import 'package:project_pulse/features/main/presentation/widgets/time_table_bottom_sheet.dart';

class CurrentUpcomingClass extends StatefulWidget {
  const CurrentUpcomingClass({super.key});

  @override
  State<CurrentUpcomingClass> createState() => _CurrentUpcomingClassState();
}

class _CurrentUpcomingClassState extends State<CurrentUpcomingClass> {
  @override
  void initState() {
    super.initState();
    context
        .read<CurrentAndUpcomingClassesCubit>()
        .getCurrentAndUpcomingClasses();
  }

  @override
  void dispose() {
    // webViewController.clearCache();
    context.read<CurrentAndUpcomingClassesCubit>().close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
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
            onPressed: _onTapTimeTableBottomSheet,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                            ? state.currentClass.currentClass
                            : '-',
                        style: GoogleFonts.readexPro(
                            fontSize: 24, color: LightPallete.primaryText),
                      )
                    ],
                  ),

                  // upco0ming class
                  Column(
                    children: [
                      Text(
                        'Upcoming',
                        style: GoogleFonts.readexPro(fontSize: 26),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        state is CurrentAndUpcomingClassesLoaded
                            ? state.currentClass.upcomingClass
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

  void _onTapTimeTableBottomSheet() async {
    print('Tap');
    await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      context: context,
      builder: (context) {
        return (Platform.isAndroid || Platform.isIOS)
            ? const TimeTableBottomSheet(url: Constants.itbsem4TimeTableSheet)
            : const Text('Only supported on Android and iOS devices.');
      },
    ).then(
      (value) {
        context
            .read<CurrentAndUpcomingClassesCubit>()
            .getCurrentAndUpcomingClasses();
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
