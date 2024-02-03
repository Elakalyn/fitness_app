import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';
import '../../Shared/Components/components.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../Settings/settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("E2E2E2"),
      appBar: AppBar(
        backgroundColor: HexColor("E2E2E2"),
        centerTitle: true,
        title: const Text('November 19th'),
        actions: [
          settingsIcon(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: styledCard(
                width: 360.0,
                height: 235.0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: styledCard(
                            offset: 3.0,
                            color: HexColor('2DD95D'),
                            height: 15.0,
                            width: 20.0),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            """564 Calories
Burned!""",
                            style: TextStyle(
                              fontSize: 32,
                              color: HexColor('2E2E2E'),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          8.h,
                          Text(
                            '+15% more than yesterday',
                            style: TextStyle(
                              fontSize: 14,
                              color: HexColor('33CC34'),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          24.h,
                          Container(
                            width: 320,
                            height: 15,
                            padding: const EdgeInsets.only(right: 39),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 200,
                                  height: 15,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF2C70D),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          8.h,
                          const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '94% of daily goal reached',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            24.h,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: styledCard(
                        height: 167.0,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: styledCard(
                                    offset: 3.0,
                                    color: HexColor('2DD95D'),
                                    height: 15.0,
                                    width: 20.0),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sleep",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: HexColor('2E2E2E'),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "8h 28m",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: HexColor('4E4E4E'),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Align(
                                    alignment: Alignment.topRight,
                                    child: PhosphorIcon(
                                      PhosphorIconsFill.moon,
                                      size: 48,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                  16.w,
                  Expanded(
                    child: styledCard(
                        height: 167.0,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: styledCard(
                                    offset: 3.0,
                                    color: HexColor('2DD95D'),
                                    height: 15.0,
                                    width: 20.0),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Activity",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: HexColor('2E2E2E'),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "1h 28m",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: HexColor('4E4E4E'),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Align(
                                    alignment: Alignment.topRight,
                                    child: PhosphorIcon(
                                      PhosphorIconsFill.lightning,
                                      size: 48,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
            41.h,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Activities',
                    style: TextStyle(
                      color: Color(0xFF2E2E2E),
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ),
            8.h,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: styledCard(
                  width: 320.0,
                  height: 140.0,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 17.0, right: 16),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: PhosphorIcon(
                            PhosphorIconsFill.personSimpleRun,
                            size: 36,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          20.w,
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: PhosphorIcon(
                              PhosphorIconsFill.sunHorizon,
                              size: 100,
                              color: Colors.black,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Early Morning',
                                style: TextStyle(
                                  color: HexColor('4E4E4E'),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              8.h,
                              Text(
                                'Running',
                                style: TextStyle(
                                  color: HexColor('2E2E2E'),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              8.h,
                              Row(
                                children: [
                                  const Text(
                                    '5 km',
                                    style: TextStyle(
                                      color: Color(0xFF6E6E6E),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  3.w,
                                  const PhosphorIcon(
                                    PhosphorIconsFill.fire,
                                    size: 15,
                                    color: Color(0xFF6E6E6E),
                                  ),
                                  8.w,
                                  const Text(
                                    '513 kcal Burned',
                                    style: TextStyle(
                                      color: Color(0xFF6E6E6E),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                      const Padding(
                        padding: EdgeInsets.only(top: 17.0, right: 16),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: PhosphorIcon(
                            PhosphorIconsFill.bicycle,
                            size: 36,
                            color: Colors.black,
                          ),
                        ),
                      ),
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
                                'Noon',
                                style: TextStyle(
                                  color: HexColor('4E4E4E'),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              8.h,
                              Text(
                                'Cycling',
                                style: TextStyle(
                                  color: HexColor('2E2E2E'),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              8.h,
                              Row(
                                children: [
                                  const Text(
                                    '2 km',
                                    style: TextStyle(
                                      color: Color(0xFF6E6E6E),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  3.w,
                                  const PhosphorIcon(
                                    PhosphorIconsFill.fire,
                                    size: 15,
                                    color: Color(0xFF6E6E6E),
                                  ),
                                  8.w,
                                  const Text(
                                    '273 kcal Burned',
                                    style: TextStyle(
                                      color: Color(0xFF6E6E6E),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                'No Activity',
                                style: TextStyle(
                                  color: HexColor('2E2E2E'),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              8.h,
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
                                'No Activity',
                                style: TextStyle(
                                  color: HexColor('2E2E2E'),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              8.h,
                            ],
                          ),
                          8.h,
                        ],
                      )
                    ],
                  )),
            ),
            
            150.h,
          ],
        ),
      ),
    );
  }
}


