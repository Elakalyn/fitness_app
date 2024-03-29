import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app/Modules/ProfileSetup/profileSetup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import '.firebase_options.dart';
import 'Modules/Authentication/Login/login.dart';
import 'Modules/Authentication/Welcome/welcome.dart';
import 'Modules/BNB/bottomNav.dart';
import 'Network/local/cacheHelper.dart';
import 'Shared/Constants/constants.dart';
import 'Shared/cubit/app_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

late Widget home;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (uid != null) {
      home = BNB();
    } else {
      home = WelcomeScreen();
    }
    return BlocProvider(
      create: (context) => AppCubit()..getUserProfile(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: HexColor('E2E2E2'),
          fontFamily: 'Poppins',
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: HexColor('E2E2E2'),
          ),
        ),
        home: home,
      ),
    );
  }
}
