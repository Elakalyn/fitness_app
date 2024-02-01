import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../Shared/Components/components.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('E2E2E2'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
        title: Text('Meal Plan',
            style: TextStyle(
              color: HexColor('2E2E2E'),
              fontSize: 32,
              fontWeight: FontWeight.w600,
            )),
      ),
      body: Column(
        children: [
          32.h,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: styledCard(
                width: 320.0,
                height: 140.0,
                color: Colors.white,
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.w,
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: PhosphorIcon(
                            PhosphorIconsFill.sun,
                            size: 100,
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Breakfast',
                              style: TextStyle(
                                color: HexColor('4E4E4E'),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            8.h,
                            Text(
                              'Berry Yogurt',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                overflow: TextOverflow.fade,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            8.h,
                            Row(
                              children: [
                                const Text(
                                  '340 kcal',
                                  style: TextStyle(
                                    color: Color(0xFF6E6E6E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const PhosphorIcon(
                                  PhosphorIconsFill.dot,
                                  size: 15,
                                  color: Color(0xFF6E6E6E),
                                ),
                                const Text(
                                  'View Recipe',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                8.w,
                                const PhosphorIcon(
                                  PhosphorIconsFill.arrowRight,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                        8.h,
                      ],
                    )
                  ],
                )),
          ),
          16.h,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: styledCard(
                width: 320.0,
                height: 140.0,
                color: Colors.white,
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.w,
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: PhosphorIcon(
                                                      PhosphorIconsFill.clockAfternoon,

                            size: 100,
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Afternoon',
                              style: TextStyle(
                                color: HexColor('4E4E4E'),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            8.h,
                            Text(
                              'Berry Yogurt',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                overflow: TextOverflow.fade,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            8.h,
                            Row(
                              children: [
                                const Text(
                                  '340 kcal',
                                  style: TextStyle(
                                    color: Color(0xFF6E6E6E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const PhosphorIcon(
                                  PhosphorIconsFill.dot,
                                  size: 15,
                                  color: Color(0xFF6E6E6E),
                                ),
                                const Text(
                                  'View Recipe',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                8.w,
                                const PhosphorIcon(
                                  PhosphorIconsFill.arrowRight,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                        8.h,
                      ],
                    )
                  ],
                )),
          ),
          16.h,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: styledCard(
                width: 320.0,
                height: 140.0,
                color: Colors.white,
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.w,
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: PhosphorIcon(
                            PhosphorIconsFill.moon,
                            size: 100,
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Night',
                              style: TextStyle(
                                color: HexColor('4E4E4E'),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            8.h,
                            Text(
                              'Berry Yogurt',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                overflow: TextOverflow.fade,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            8.h,
                            Row(
                              children: [
                                const Text(
                                  '340 kcal',
                                  style: TextStyle(
                                    color: Color(0xFF6E6E6E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const PhosphorIcon(
                                  PhosphorIconsFill.dot,
                                  size: 15,
                                  color: Color(0xFF6E6E6E),
                                ),
                                const Text(
                                  'View Recipe',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                8.w,
                                const PhosphorIcon(
                                  PhosphorIconsFill.arrowRight,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                        8.h,
                      ],
                    )
                  ],
                )),
          ),
          16.h,
        ],
      ),
      backgroundColor: HexColor('E2E2E2'),
    );
  }
}
