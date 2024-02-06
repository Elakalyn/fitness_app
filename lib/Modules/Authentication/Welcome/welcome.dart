import 'package:fitness_app/Shared/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../../Shared/Components/components.dart';
import '../Login/login.dart';
import '../Sign Up/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: HexColor('E2E2E2'),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome',
                    style: TextStyle(
                      color: HexColor('2E2E2E'),
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    )),
                32.h,
                GestureDetector(
                  onTap: () {
                    navigateTo(context, SignUpScreen());
                  },
                  child: styledCard(
                    height: 68.0,
                    color: HexColor('F2C70D'),
                    width: 320.0,
                    child: Center(
                      child: Text('Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ),
                ),
                24.h,
                GestureDetector(
                  onTap: () {
                    navigateTo(context, LoginScreen());
                  },
                  child: styledCard(
                    height: 68.0,
                    color: Colors.white,
                    width: 320.0,
                    child: Center(
                      child: Text('Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
