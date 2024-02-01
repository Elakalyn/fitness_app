import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../Shared/Components/components.dart';
import '../Exercises/exercises.dart';
import '../Home/home.dart';
import '../Meals/meals.dart';

class BNB extends StatelessWidget {
  const BNB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MealsScreen(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  styledCard(
                    height: 90.0,
                    width: 155.0,
                    color: HexColor('F2C70D'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PhosphorIcon(
                          PhosphorIconsFill.house,
                          size: 35,
                          color: Colors.white,
                        ),
                        8.w,
                        Text('Home',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                  ),
                  16.w,
                  styledCard(
                    height: 75.0,
                    width: 75.0,
                    color: Colors.white,
                    child: PhosphorIcon(
                      PhosphorIconsFill.bowlFood,
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                  16.w,
                  styledCard(
                    height: 75.0,
                    width: 75.0,
                    color: Colors.white,
                    child: PhosphorIcon(
                      PhosphorIconsFill.barbell,
                      size: 35,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
