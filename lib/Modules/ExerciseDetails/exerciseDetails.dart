import 'package:fitness_app/Shared/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../Start Exercise/startExercise.dart';

class ExerciseDetails extends StatelessWidget {
  const ExerciseDetails(
      {super.key,
      required this.name,
      required this.equipment,
      required this.focus,
      required this.tips,
      required this.image});

  final name;
  final equipment;
  final focus;
  final tips;
  final image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E2E2E2'),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor("E2E2E2"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              styledCard(
                height: 255.0,
                width: 320.0,
                color: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              24.h,
              Text(name,
                  style: TextStyle(
                    color: HexColor('2E2E2E'),
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  )),
              32.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('Focus Area',
                            style: TextStyle(
                              color: HexColor('2E2E2E'),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                        8.h,
                        Text(focus,
                            style: TextStyle(
                              color: HexColor('6E6E6E'),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(equipment,
                            style: TextStyle(
                              color: HexColor('2E2E2E'),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                        8.h,
                        Text('Bodyweight',
                            style: TextStyle(
                              color: HexColor('6E6E6E'),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              48.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tips',
                          style: TextStyle(
                            color: HexColor('4E4E4E'),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                      8.h,
                      SizedBox(
                        height: tips.length * 40.0,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: tips.length,
                          itemBuilder: (context, index) => Text(tips[index],
                              style: TextStyle(
                                color: HexColor('4E4E4E'),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ),
                      32.h,
                      TextButton(
                        onPressed: () {
                          navigateTo(context, StartExercise());
                        },
                        child: Text('Start',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )),
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(320, 47)),
                            backgroundColor:
                                MaterialStatePropertyAll(HexColor('F2C70D'))),
                      ),
                      50.h,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
