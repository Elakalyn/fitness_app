import 'package:flutter/material.dart';
import 'Modules/Authentication/Welcome/welcome.dart';
import 'Modules/BNB/bottomNav.dart';
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
        fontFamily: 'Poppins',
      ),
      home: WelcomeScreen(),
    );
  }
}

