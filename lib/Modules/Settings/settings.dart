import 'package:fitness_app/Shared/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../Shared/Components/components.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('E2E2E2'),
        title: Text('Settings',
            style: TextStyle(
              color: HexColor('2E2E2E'),
              fontSize: 32,
              fontWeight: FontWeight.w600,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              32.h,
              Row(
                children: [
                  styledCard(
                    color: HexColor('F2C70D'),
                    width: 150.0,
                    height: 75.0,
                    child: const Center(
                      child: Text('KG/KM',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          )),
                    ),
                  ),
                  16.w,
                  styledCard(
                    color: Colors.white,
                    width: 150.0,
                    height: 75.0,
                    child: const Center(
                      child: Text('IB/MI',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          )),
                    ),
                  ),
                ],
              ),
              16.h,
              styledCard(
                color: Colors.white,
                width: 320.0,
                height: 228.0 + 8,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text('Profile',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                            )),
                      ),
                      16.h,
                      Row(
                        children: [
                          const Text('Weight',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              )),
                          const Spacer(),
                          const Text('78 KG',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              )),
                          8.w,
                          const PhosphorIcon(
                            PhosphorIconsFill.caretUpDown,
                            size: 27,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      8.h,
                      Row(
                        children: [
                          const Text('Height',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              )),
                          const Spacer(),
                          const Text('164 CM',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              )),
                          8.w,
                          const PhosphorIcon(
                            PhosphorIconsFill.caretUpDown,
                            size: 27,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      8.h,
                      Row(
                        children: [
                          const Text('Gender',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              )),
                          const Spacer(),
                          const Text('Female',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              )),
                          8.w,
                          const PhosphorIcon(
                            PhosphorIconsFill.caretDown,
                            size: 27,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      8.h,
                    ],
                  ),
                ),
              ),
              32.h,
              styledCard(
                color: Colors.white,
                width: 320.0,
                height: 80.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Text('Diet Plan',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            )),
                      ),
                      const Spacer(),
                      const Align(
                        alignment: Alignment.center,
                        child: Text('Ketogenic',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            )),
                      ),
                      8.w,
                      const PhosphorIcon(
                        PhosphorIconsFill.caretDown,
                        size: 27,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              16.h,
              styledCard(
                color: Colors.white,
                width: 320.0,
                height: 124.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text('Goal',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              )),
                          const Spacer(),
                          const Text('Lose Weight',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              )),
                          8.w,
                          const PhosphorIcon(
                            PhosphorIconsFill.caretDown,
                            size: 27,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      8.h,
                      Row(
                        children: [
                          const Text('Target Weight',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              )),
                          const Spacer(),
                          const Text('70 KG',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              )),
                          8.w,
                          const PhosphorIcon(
                            PhosphorIconsFill.caretUpDown,
                            size: 27,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              32.h,
              GestureDetector(
                onTap: () {
                  cubit.logout(context);
                },
                child: styledCard(
                  color: Colors.red,
                  width: 320.0,
                  height: 80.0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        const Align(
                          alignment: Alignment.center,
                          child: Text('Logout',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              )),
                        ),
                        const Spacer(),
                        8.w,
                        const PhosphorIcon(
                          PhosphorIconsFill.signOut,
                          size: 27,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              32.h,
            ],
          ),
        ),
      ),
    );
  }
}
