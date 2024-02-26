import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../Shared/Components/components.dart';
import '../../Shared/cubit/app_cubit.dart';

var _goal;
var _diet;
var _gender;
var _height;
var _weight;

class ProfileSetup extends StatelessWidget {
  const ProfileSetup({super.key});

  @override
  Widget build(BuildContext context) {
    var goal1 = false;
    var goal2 = false;
    var goal3 = false;
    final controller =
        PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
                ),
                32.h,
                Text('What\'s your goal?',
                    style: TextStyle(
                      color: HexColor('2E2E2E'),
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    )),
                48.h,
                GestureDetector(
                  onTap: () {
                    _goal = 'Lose Weight';
                    goal1 = true;
                    goal2 = false;
                    goal3 = false;
                    AppCubit.get(context).emit(SuccessRegisterState());
                  },
                  child: styledCard(
                    color: goal1 ? HexColor('F2C70D') : Colors.white,
                    width: 320.0,
                    height: 80.0,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text('Lose Weight',
                                style: TextStyle(
                                  color: goal1 ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                32.h,
                GestureDetector(
                  onTap: () {
                    _goal = 'Gain Weight';
                    goal2 = true;
                    goal1 = false;
                    goal3 = false;
                    AppCubit.get(context).emit(SuccessRegisterState());
                  },
                  child: styledCard(
                    color: goal2 ? HexColor('F2C70D') : Colors.white,
                    width: 320.0,
                    height: 80.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text('Gain Weight',
                                style: TextStyle(
                                  color: goal2 ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                )),
                          ),
                          8.w,
                        ],
                      ),
                    ),
                  ),
                ),
                32.h,
                GestureDetector(
                  onTap: () {
                    _goal = 'Maintain Weight';
                    goal3 = true;
                    goal2 = false;
                    goal1 = false;
                    AppCubit.get(context).emit(SuccessRegisterState());
                  },
                  child: styledCard(
                    color: goal3 ? HexColor('F2C70D') : Colors.white,
                    width: 320.0,
                    height: 80.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text('Maintain Weight',
                                style: TextStyle(
                                  color: goal3 ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                )),
                          ),
                          8.w,
                        ],
                      ),
                    ),
                  ),
                ),
                48.h,
                TextButton(
                  onPressed: () {
                    navigateTo(context, ProfileSetup2());
                  },
                  style: ButtonStyle(
                      minimumSize:
                          const MaterialStatePropertyAll(Size(320, 47)),
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
      },
    );
  }
}

class ProfileSetup2 extends StatelessWidget {
  const ProfileSetup2({super.key});

  @override
  Widget build(BuildContext context) {
    var diet1 = false;
    var diet2 = false;
    var diet3 = false;
    var diet4 = false;
    var controller = PageController(viewportFraction: 0.8, keepPage: true, initialPage: 1);

    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
                  GestureDetector(
                    onTap: () {
                      _diet = 'None';
                      diet1 = true;
                      diet2 = false;
                      diet3 = false;
                      diet4 = false;
                      AppCubit.get(context).emit(SuccessRegisterState());
                    },
                    child: styledCard(
                      color: diet1 ? HexColor('F2C70D') : Colors.white,
                      width: 320.0,
                      height: 80.0,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text('None',
                                  style: TextStyle(
                                    color: diet1 ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  32.h,
                  GestureDetector(
                    onTap: () {
                      _diet = 'Ketogenic';
                      diet1 = false;
                      diet2 = true;
                      diet3 = false;
                      diet4 = false;
                      AppCubit.get(context).emit(SuccessRegisterState());
                    },
                    child: styledCard(
                      color: diet2 ? HexColor('F2C70D') : Colors.white,
                      width: 320.0,
                      height: 80.0,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text('Ketogenic',
                                  style: TextStyle(
                                    color: diet2 ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  32.h,
                  GestureDetector(
                    onTap: () {
                      _diet = 'Paleo';
                      diet1 = false;
                      diet2 = false;
                      diet3 = true;
                      diet4 = false;
                      AppCubit.get(context).emit(SuccessRegisterState());
                    },
                    child: styledCard(
                      color: diet3 ? HexColor('F2C70D') : Colors.white,
                      width: 320.0,
                      height: 80.0,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text('Paleo',
                                  style: TextStyle(
                                    color: diet3 ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  32.h,
                  GestureDetector(
                    onTap: () {
                      _diet = 'Vegan';
                      diet1 = false;
                      diet2 = false;
                      diet3 = false;
                      diet4 = true;
                      AppCubit.get(context).emit(SuccessRegisterState());
                    },
                    child: styledCard(
                      color: diet4 ? HexColor('F2C70D') : Colors.white,
                      width: 320.0,
                      height: 80.0,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text('Vegan',
                                  style: TextStyle(
                                    color: diet4 ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  48.h,
                  TextButton(
                    onPressed: () {
                      navigateTo(context, ProfileSetup3());
                    },
                    style: ButtonStyle(
                        minimumSize:
                            const MaterialStatePropertyAll(Size(320, 47)),
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
      },
    );
  }
}

class ProfileSetup3 extends StatelessWidget {
  const ProfileSetup3({super.key});

  @override
  Widget build(BuildContext context) {
    var weightController = TextEditingController();
    var heightController = TextEditingController();
// Step 1.
    String dropdownValue = 'Female';
// Step 2.
    DropdownButton<String>(
      // Step 3.
      value: dropdownValue,
      // Step 4.
      items: <String>['Female', 'Male']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text('Female',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              )),
        );
      }).toList(),
      // Step 5.
      onChanged: (String? newValue) {
        dropdownValue = newValue!;
        AppCubit.get(context).emit(SuccessRegisterState());
      },
    );
    var controller = PageController(viewportFraction: 0.8, keepPage: true, initialPage: 2);

    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
                    height: 262.0,
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
                              SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: TextFormField(
                                    controller: weightController,
                                    maxLength: 3,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  )),
                              8.w,
                              Text(
                                'KG',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
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
                              SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: TextFormField(
                                    controller: heightController,
                                    maxLength: 3,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  )),
                              8.w,
                              Text(
                                'CM',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
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
                              GestureDetector(
                                onTap: () {},
                                child: DropdownButton<String>(
                                  // Step 3.
                                  value: dropdownValue,
                                  // Step 4.
                                  items: <String>['Female', 'Male']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                          )),
                                    );
                                  }).toList(),
                                  // Step 5.
                                  onChanged: (String? newValue) {
                                    dropdownValue = newValue!;
                                    AppCubit.get(context)
                                        .emit(SuccessRegisterState());
                                  },
                                ),
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
                    onPressed: () {
                      _height = heightController.text;
                      _weight = weightController.text;
                      _gender = dropdownValue;
                      AppCubit.get(context).setupProfile(
                        height: _height,
                        weight: _weight,
                        gender: _gender,
                        goal: _goal,
                        diet: _diet,
                        context: context,
                      );
                    },
                    style: ButtonStyle(
                        minimumSize:
                            const MaterialStatePropertyAll(Size(320, 47)),
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
      },
    );
  }
}
