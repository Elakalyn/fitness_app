import 'package:fitness_app/Shared/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../Shared/Components/components.dart';
import '../Exercises/exercises.dart';
import '../Home/home.dart';
import '../Meals/meals.dart';

class BNB extends StatelessWidget {
  BNB({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              AppCubit.get(context).currentScreen,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (AppCubit.get(context).currentScreen is HomeScreen)
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
                      if (AppCubit.get(context).currentScreen is! HomeScreen)
                        GestureDetector(
                          onTap: () {
                            AppCubit.get(context).changeBNB(HomeScreen());
                          },
                          child: styledCard(
                            height: 75.0,
                            width: 75.0,
                            color: Colors.white,
                            child: PhosphorIcon(
                              PhosphorIconsFill.house,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      16.w,
                      if (AppCubit.get(context).currentScreen is MealsScreen)
                        styledCard(
                          height: 90.0,
                          width: 155.0,
                          color: HexColor('F2C70D'),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PhosphorIcon(
                                PhosphorIconsFill.bowlFood,
                                size: 35,
                                color: Colors.white,
                              ),
                              8.w,
                              Text('Meals',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          ),
                        ),
                      if (AppCubit.get(context).currentScreen is! MealsScreen)
                        GestureDetector(
                          onTap: () {
                            AppCubit.get(context).changeBNB(MealsScreen());
                          },
                          child: styledCard(
                            height: 75.0,
                            width: 75.0,
                            color: Colors.white,
                            child: PhosphorIcon(
                              PhosphorIconsFill.bowlFood,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      16.w,
                      if (AppCubit.get(context).currentScreen
                          is ExercisesScreen)
                        styledCard(
                          height: 90.0,
                          width: 155.0,
                          color: HexColor('F2C70D'),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PhosphorIcon(
                                PhosphorIconsFill.barbell,
                                size: 35,
                                color: Colors.white,
                              ),
                              8.w,
                              Text('Exercises',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          ),
                        ),
                      if (AppCubit.get(context).currentScreen
                          is! ExercisesScreen)
                        GestureDetector(
                          onTap: () {
                            AppCubit.get(context).changeBNB(ExercisesScreen());
                          },
                          child: styledCard(
                            height: 75.0,
                            width: 75.0,
                            color: Colors.white,
                            child: PhosphorIcon(
                              PhosphorIconsFill.barbell,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
