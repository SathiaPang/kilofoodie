import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kilofoodie/components/custombutton.dart';
import 'package:kilofoodie/components/textfield.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/screens/Navigation_screen/homescreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 25,
                    color: Constants.primaryColor,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              Text(
                'Login to your account',
                style: TextStyle(fontSize: 20, color: Constants.textcolors),
              ),
              SizedBox(
                height: 70,
              ),
              InfoField(
                HintText: 'Email or Phone',
              ),
              SizedBox(
                height: 20,
              ),
              InfoField(
                HintText: 'Password',
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Constants.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                title: 'Login',
                color: Constants.primaryColor,
                textcolor: Constants.White,
                borderColor: Constants.primaryColor,
                callback: () {
                  Get.to(() => HomeScreen());
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don`t have an account,',
                    style:
                        TextStyle(color: Constants.formtextcolor, fontSize: 16),
                  ),
                  Text(
                    ' Sign Up',
                    style:
                        TextStyle(color: Constants.primaryColor, fontSize: 16),
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
