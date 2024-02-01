import 'package:fitness_app/Modules/Settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Modules/Authentication/Login/login.dart';
import 'Modules/Authentication/Sign Up/signup.dart';
import 'Modules/Authentication/Welcome/welcome.dart';
import 'Modules/BNB/bottomNav.dart';
import 'Modules/ExerciseDetails/exerciseDetails.dart';
import 'Modules/Meal Recipe/mealRecipe.dart';
import 'Modules/Start Exercise/startExercise.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: HexColor('E2E2E2'),
        fontFamily: 'Poppins',
      ),
      home: SettingsScreen(),
    );
  }
}
