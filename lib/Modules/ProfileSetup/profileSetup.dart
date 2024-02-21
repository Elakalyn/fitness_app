import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../Shared/Components/components.dart';

class ProfileSetup extends StatelessWidget {
  const ProfileSetup({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            40.h,
            SmoothPageIndicator(
                controller: controller, // PageController
                count: 3,
                effect: WormEffect(
                    dotHeight: 10,
                    dotWidth: 92,
                    dotColor: Colors.white,
                    activeDotColor:
                        HexColor("F2C70D")), // your preferred effect
                onDotClicked: (index) {}),
            32.h,
            Text('What\'s your goal?',
                style: TextStyle(
                  color: HexColor('2E2E2E'),
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                )),
            48.h,
            styledCard(
              color: Colors.white,
              width: 320.0,
              height: 80.0,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text('Lose Weight',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                          )),
                    ),
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
                      child: Text('Gain Weight',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                          )),
                    ),
                    8.w,
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
                      child: Text('Maintain Weight',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                          )),
                    ),
                    8.w,
                  ],
                ),
              ),
            ),
            48.h,
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size(320, 47)),
                  backgroundColor:
                      MaterialStatePropertyAll(HexColor('F2C70D'))),
              child: const Text('Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSetup2 extends StatelessWidget {
  const ProfileSetup2({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              40.h,
              SmoothPageIndicator(
                  controller: controller, // PageController
                  count: 3,
                  effect: WormEffect(
                      dotHeight: 10,
                      dotWidth: 92,
                      dotColor: Colors.white,
                      activeDotColor:
                          HexColor("F2C70D")), // your preferred effect
                  onDotClicked: (index) {}),
              32.h,
              Text('What\'s your preferred diet?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: HexColor('2E2E2E'),
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  )),
              48.h,
              styledCard(
                color: Colors.white,
                width: 320.0,
                height: 80.0,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text('None',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            )),
                      ),
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
                        child: Text('Ketogenic',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            )),
                      ),
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
                        child: Text('Paleo',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            )),
                      ),
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
                        child: Text('Vegan',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              48.h,
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(Size(320, 47)),
                    backgroundColor:
                        MaterialStatePropertyAll(HexColor('F2C70D'))),
                child: const Text('Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileSetup3 extends StatelessWidget {
  const ProfileSetup3({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              40.h,
              SmoothPageIndicator(
                  controller: controller, // PageController
                  count: 3,
                  effect: WormEffect(
                      dotHeight: 10,
                      dotWidth: 92,
                      dotColor: Colors.white,
                      activeDotColor:
                          HexColor("F2C70D")), // your preferred effect
                  onDotClicked: (index) {}),
              32.h,
              Text('What\'re your dimensions?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: HexColor('2E2E2E'),
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  )),
              48.h,
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
              48.h,
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(Size(320, 47)),
                    backgroundColor:
                        MaterialStatePropertyAll(HexColor('F2C70D'))),
                child: const Text('Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
