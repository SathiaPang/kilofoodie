import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilofoodie/components/custombutton.dart';
import 'package:kilofoodie/components/textfield.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/screens/Navigation_screen/homescreen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'Register',
                  style: TextStyle(color: Constants.primaryColor, fontSize: 27),
                ),
              ),
              Text(
                'Create your new account',
                style: TextStyle(color: Constants.textcolors, fontSize: 20),
              ),
              SizedBox(
                height: 40,
              ),
              InfoField(
                HintText: 'Full Name',
              ),
              SizedBox(
                height: 20,
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
                height: 20,
              ),
              InfoField(
                HintText: 'Confirm Password',
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check_box,
                        color: Constants.primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 17),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'I agree to your',
                              style: TextStyle(color: Constants.formtextcolor),
                            ),
                            TextSpan(
                              text: ' privacy policy',
                              style: TextStyle(color: Constants.primaryColor),
                            ),
                            TextSpan(
                              text: ' and',
                              style: TextStyle(color: Constants.formtextcolor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 33),
                    child: Text(
                      'terms & conditions',
                      style: TextStyle(
                          color: Constants.primaryColor, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    title: 'Sign Up',
                    color: Constants.primaryColor,
                    textcolor: Constants.White,
                    borderColor: Constants.primaryColor,
                    callback: () {
                      Get.to(() => HomeScreen());
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 17),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Already have an account?',
                            style: TextStyle(color: Constants.formtextcolor),
                          ),
                          TextSpan(
                            text: ' Login Here.',
                            style: TextStyle(color: Constants.primaryColor),
                          ),
                        ],
                      ),
                    ),
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
