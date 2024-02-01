import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../../Shared/Components/components.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E2E2E2'),
      body: Center(
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
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              20.h,
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Create Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              20.h,
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              24.h,
              styledCard(
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
              24.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Already have an account?',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),),
                  8.w,
                  GestureDetector(
                    onTap: () {},
                    child: Text('Login',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline
                  ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
