import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Modules/BNB/bottomNav.dart';
import 'Shared/cubit/app_cubit.dart';

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
      home: BlocProvider(
        create: (context) => AppCubit(),
        child: BNB(),
      ),
    );
  }
}
