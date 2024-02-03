import 'package:bloc/bloc.dart';
import 'package:fitness_app/Modules/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../Modules/Exercises/exercises.dart';
import '../../Modules/Meals/meals.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [HomeScreen(), MealsScreen(), ExercisesScreen()];
  dynamic currentScreen = HomeScreen();

  void changeBNB(screen){
    currentScreen = screen;
    emit(BNBChangeState());
  }
  
}
