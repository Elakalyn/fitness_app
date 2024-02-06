import 'package:firebase_core/firebase_core.dart';
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget home;
    if (uid != null) {
      home = BNB();
    } else {
      home = WelcomeScreen();
    }
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: HexColor('E2E2E2'),
          fontFamily: 'Poppins',
        ),
        home: home,
      ),
    );
  }
}
