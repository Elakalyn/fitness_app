import 'package:fitness_app/Shared/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class StartExercise extends StatelessWidget {
  const StartExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E2E2E2'),
      body: Column(
        children: [
          32.h,
          Align(
            alignment: Alignment.center,
            child: styledCard(
              color: Colors.white,
              height: 600.0,
              width: 320.0,
              child: Column(
                children: [
                  20.h,
                  Align(
                    alignment: Alignment.topCenter,
                    child: PhosphorIcon(
                      PhosphorIconsFill.personSimpleRun,
                      size: 150,
                      color: Colors.black,
                    ),
                  ),
                  8.h,
                  Text('Running',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      )),
                  24.h,
                  Text('0h:5m:45s',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      )),
                  24.h,
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Calories Burned:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                          5.w,
                          Text('126 kcal',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                    ),
                  ),
                  16.h,
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
                              Text('• Maintain an upright posture',
                              style: TextStyle(
                                color: HexColor('4E4E4E'),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )),Text('• Run on soft surface to reduce joint impact',
                              style: TextStyle(
                                color: HexColor('4E4E4E'),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )),Text('• Take short strides to reduce joint impact',
                              style: TextStyle(
                                color: HexColor('4E4E4E'),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                    ),
                  ),
                  24.h,
                  TextButton(
                        onPressed: () {},
                        child: Text('Finish',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )),
                        style: ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(280, 47)),
                            backgroundColor:
                                MaterialStatePropertyAll(HexColor('F2C70D'))),
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
