import 'package:fitness_app/Modules/ExerciseDetails/exerciseDetails.dart';
import 'package:fitness_app/Shared/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../Start Exercise/startExercise.dart';

class ExercisesScreen extends StatelessWidget {
  const ExercisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E2E2E2'),
      appBar: AppBar(
        backgroundColor: HexColor('E2E2E2'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          settingsIcon(),
        ],
        title: Text('Exercises',
            style: TextStyle(
              color: HexColor('2E2E2E'),
              fontSize: 32,
              fontWeight: FontWeight.w600,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            32.h,
            Text('Recent',
                style: TextStyle(
                  color: HexColor('2E2E2E'),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
            8.h,
            GestureDetector(
              onTap: () {
                navigateTo(context, ExerciseDetails());
              },
              child: styledCard(
                width: 320.0,
                height: 130.0,
                color: Colors.white,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                           
                navigateToAndFinish(context, StartExercise());
             
                          },
                          child: Text('Start',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(HexColor('F2C70D'))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: PhosphorIcon(
                              PhosphorIconsFill.personSimpleRun,
                              size: 70,
                              color: Colors.black,
                            ),
                          ),
                          8.w,
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text('Running',
                                style: TextStyle(
                                  color: HexColor('2E2E2E'),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            16.h,
            GestureDetector(
              onTap: () {
                navigateTo(context, ExerciseDetails());
              },
              child: styledCard(
                width: 320.0,
                height: 130.0,
                color: Colors.white,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                                navigateToAndFinish(context, StartExercise());
                          },
                          child: Text('Start',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(HexColor('F2C70D'))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: PhosphorIcon(
                              PhosphorIconsFill.bicycle,
                              size: 70,
                              color: Colors.black,
                            ),
                          ),
                          8.w,
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text('Cycling',
                                style: TextStyle(
                                  color: HexColor('2E2E2E'),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            32.h,
            Text('All',
                style: TextStyle(
                  color: HexColor('2E2E2E'),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
            8.h,
            GestureDetector(
              onTap: () {
                navigateTo(context, ExerciseDetails());
              },
              child: styledCard(
                width: 320.0,
                height: 130.0,
                color: Colors.white,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                                navigateToAndFinish(context, StartExercise());
                          },
                          child: Text('Start',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(HexColor('F2C70D'))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: PhosphorIcon(
                              PhosphorIconsFill.goggles,
                              size: 70,
                              color: Colors.black,
                            ),
                          ),
                          8.w,
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text('Swimming',
                                style: TextStyle(
                                  color: HexColor('2E2E2E'),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
