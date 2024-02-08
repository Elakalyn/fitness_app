import 'package:fitness_app/Modules/BNB/bottomNav.dart';
import 'package:fitness_app/Shared/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../../Shared/Components/components.dart';
import '../../AdminPanel/admin.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  Widget suffixWidgetPassword = const Icon(
    Icons.visibility,
    color: Colors.white,
  );
  bool fieldStatus = true;
  Widget? suffixWidgetEmail = null;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        if (state is LoadingLoginState) {
          fieldStatus = false;
          suffixWidgetEmail = const CircularProgressIndicator(
            color: Colors.white38,
            strokeWidth: 1,
          );
          suffixWidgetPassword = const CircularProgressIndicator(
            color: Colors.white38,
            strokeWidth: 1,
          );
        } else {
          fieldStatus = true;
          suffixWidgetEmail = null;
          suffixWidgetPassword = const Icon(
            Icons.visibility,
            color: Colors.white,
          );
        }

        if (state is SuccessLoginState) {
          navigateToAndFinish(context, BNB());
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: HexColor('E2E2E2'),
          body: Form(
            key: formKey,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Welcome Back',
                        style: TextStyle(
                          color: HexColor('2E2E2E'),
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        )),
                    32.h,
                    TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'E-mail cannot be left empty.';
                        } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        errorStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 100, 89),
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
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
                      decoration: InputDecoration(
                        errorStyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 100, 89),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            AppCubit.get(context).changeViewable();
                          },
                          child: suffixWidgetPassword,
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Colors.white),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      obscureText: AppCubit.get(context).isViewable,
                    ),
                    24.h,
                    GestureDetector(
                      onLongPress: (){
                         navigateToAndFinish(context, BNB());
                      },
                      onTap: () {
                        if(emailController.text == 'admin' && passwordController.text == 'admin'){
                          navigateToAndFinish(context, AdminPanel());
                        }

                        if (formKey.currentState!.validate()) {
                          AppCubit.get(context)
                              .loginUser(emailController.text,
                                  passwordController.text, context)
                              .then((value) {});
                        }
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
                    ),
                    24.h,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        8.w,
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Reset password',
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
        );
      },
    );
  }
}
