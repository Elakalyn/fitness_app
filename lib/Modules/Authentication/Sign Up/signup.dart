import 'package:fitness_app/Modules/Authentication/Login/login.dart';
import 'package:fitness_app/Shared/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../../Shared/Components/components.dart';
import '../../BNB/bottomNav.dart';

var emailController = TextEditingController();
var passwordController = TextEditingController();
var formKey = GlobalKey<FormState>();
Widget suffixWidgetPassword = const Icon(
  Icons.visibility,
  color: Colors.white,
);
bool fieldStatus = true;
Widget? suffixWidgetEmail = null;

var usernameController = TextEditingController();
var confirmPasswordController = TextEditingController();

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        if (state is SuccessRegisterState) {
          navigateToAndFinish(context, BNB());
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: HexColor('E2E2E2'),
          body: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Welcome',
                          style: TextStyle(
                            color: HexColor('2E2E2E'),
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          )),
                      32.h,
                      TextFormField(
                        controller: usernameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username cannot be left empty.';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Username',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      20.h,
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'E-mail cannot be left empty.';
                          } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      20.h,
                      TextFormField(
                        controller: passwordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password cannot be left empty.';
                          }
                          return null;
                        },
                        obscureText: AppCubit.get(context).isViewable,
                        decoration: InputDecoration(
                          hintText: 'Create Password',
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              AppCubit.get(context).changeViewable();
                            },
                            child: const Icon(
                              Icons.visibility,
                              color: Colors.white,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      20.h,
                      TextFormField(
                        controller: confirmPasswordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field cannnot be left empty.';
                          }
                          if (value.toString() != passwordController.text) {
                            return 'Please recheck your password before proceeding.';
                          }
                          return null;
                        },
                        obscureText: AppCubit.get(context).isViewable,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              AppCubit.get(context).changeViewable();
                            },
                            child: const Icon(
                              Icons.visibility,
                              color: Colors.white,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      24.h,
                      GestureDetector(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            AppCubit.get(context).register(
                                email: emailController.text,
                                password: passwordController.text,
                                context: context,
                                name: usernameController.text);
                          }
                        },
                        child: styledCard(
                          height: 68.0,
                          color: Colors.white,
                          width: 320.0,
                          child: Center(
                            child: Text('Sign Up',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ),
                      ),
                      24.h,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          8.w,
                          GestureDetector(
                            onTap: () {
                              navigateTo(context, LoginScreen());
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
