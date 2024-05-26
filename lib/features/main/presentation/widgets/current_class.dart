import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pulse/core/theme/app_pallete.dart';
import 'package:project_pulse/core/theme/light_pallete.dart';
import 'package:project_pulse/core/utils/add_space.dart';

class CurrentClass extends StatelessWidget {
  const CurrentClass({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: make this dynamic
    return Container(
        margin: const EdgeInsets.all(8),
        width: double.infinity,
        height: 120,
        decoration: const BoxDecoration(
            color: AppPallete.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
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
                  addVerticalSpace(10),
                  Text(
                    'CS',
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
                  addVerticalSpace(10),
                  Text(
                    'Maths',
                    style: GoogleFonts.readexPro(
                        fontSize: 24, color: LightPallete.primaryText),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
