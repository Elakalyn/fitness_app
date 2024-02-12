// ignore_for_file: prefer_const_constructors

import 'package:fitness_app/Shared/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../Shared/cubit/app_cubit.dart';
import '../Start Exercise/startExercise.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    // EXERCISE CONTROLLERS
    var exerciseNameController = TextEditingController();
    var exerciseFocusController = TextEditingController();
    var exerciseEquipmentController = TextEditingController();
    var exerciseTipsController = TextEditingController();
    var exerciseImageController = TextEditingController();
    var cubit = AppCubit.get(context);

    // MEAL CONTROLLERS
    var mealNameController = TextEditingController();
    var mealTimeController = TextEditingController();
    var mealCaloriesController = TextEditingController();
    var mealDietController = TextEditingController();
    var mealImageController = TextEditingController();
    var mealIngredientsController = TextEditingController();
    var mealInstructionsController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Panel',
            style: TextStyle(
              fontSize: 32,
              color: HexColor('2E2E2E'),
              fontWeight: FontWeight.w600,
            )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.h,
              Text('Add a new exercise',
                  style: TextStyle(
                    color: HexColor('2E2E2E'),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  )),
              8.h,
              styledCard(
                width: 320.0,
                height: 466.0,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          const Align(
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
                              child: SizedBox(
                                  width: 100,
                                  child: TextField(
                                    controller: exerciseNameController,
                                  ))),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Focus Area',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                          SizedBox(
                            width: 100,
                            child: TextField(
                              controller: exerciseFocusController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    8.h,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Equipment',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                          SizedBox(
                            width: 100,
                            child: TextField(
                              controller: exerciseEquipmentController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    8.h,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Tips',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                          SizedBox(
                            width: 100,
                            child:
                                TextField(controller: exerciseTipsController),
                          ),
                        ],
                      ),
                    ),
                    8.h,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Image',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                          SizedBox(
                            width: 100,
                            child:
                                TextField(controller: exerciseImageController),
                          ),
                        ],
                      ),
                    ),
                    8.h,
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            List<String> tips =
                                exerciseTipsController.text.split(',');
                            cubit.addExercise(
                                name: exerciseNameController.text,
                                focusArea: exerciseFocusController.text,
                                equipment: exerciseEquipmentController.text,
                                tips: tips,
                                image: exerciseImageController.text,
                                context: context);
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(HexColor('F2C70D'))),
                          child: const Text('Add',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              32.h,
              Text('Add a new meal',
                  style: TextStyle(
                    color: HexColor('2E2E2E'),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  )),
              8.h,
              styledCard(
                width: 320.0,
                height: 466.0 + 56,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: PhosphorIcon(
                              PhosphorIconsFill.bowlFood,
                              size: 70,
                              color: Colors.black,
                            ),
                          ),
                          8.w,
                          Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                  width: 100,
                                  child: TextField(
                                    controller: mealNameController,
                                  ))),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Diet',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                          SizedBox(
                            width: 100,
                            child: TextField(
                              controller: mealDietController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    8.h,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Image',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                          SizedBox(
                            width: 100,
                            child: TextField(
                              controller: mealImageController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    8.h,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Ingredients',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                          SizedBox(
                            width: 100,
                            child: TextField(
                                controller: mealIngredientsController),
                          ),
                        ],
                      ),
                    ),
                    8.h,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Instructions',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                          SizedBox(
                            width: 100,
                            child: TextField(
                                controller: mealInstructionsController),
                          ),
                        ],
                      ),
                    ),
                    8.h,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Time',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                          SizedBox(
                            width: 100,
                            child: TextField(controller: mealTimeController),
                          ),
                        ],
                      ),
                    ),
                    8.h,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Calories',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                          SizedBox(
                            width: 100,
                            child:
                                TextField(controller: mealCaloriesController),
                          ),
                        ],
                      ),
                    ),
                    8.h,
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            List<String> ingredients =
                                mealIngredientsController.text.split(',');
                            List<String> instructions =
                                mealInstructionsController.text.split(',');
                            cubit.addMeal(
                                diet: mealDietController.text,
                                image: mealImageController.text,
                                name: mealNameController.text,
                                time: mealTimeController.text,
                                calories: mealCaloriesController.text,
                                ingredients: ingredients,
                                instructions: instructions,
                                context: context);
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(HexColor('F2C70D'))),
                          child: const Text('Add',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              20.h,
            ],
          ),
        ),
      ),
    );
  }
}
