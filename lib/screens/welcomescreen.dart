import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilofoodie/components/custombutton.dart';
import 'package:kilofoodie/components/random_stuff.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/screens/loginscreen.dart';
import 'package:kilofoodie/screens/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/image-option2.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(gradient: Constants.linearGradient),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: Center(
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Welcome',
                style: TextStyle(fontSize: 33, color: Constants.primaryColor),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Text(
                    'lorem ipsum dolor sita amet, consectetur adispiscing elit. Vivamus et felis dolor. Donec vitae facilisis velit',
                    style: TextStyle(
                      fontSize: 16,
                      color: Constants.textcolors,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Loginandsignupbtn(),
              SizedBox(
                height: 20,
              ),
              // CustomButton(
              //   title: 'SIGNUP',
              //   color: Constants.secondaryColor,
              //   borderColor: Constants.primaryColor,
              //   textcolor: Constants.primaryColor,
              //   callback: () {
              //     Get.toNamed('/signup');
              //   },
              // ),
            ],
          )
        ],
      ),
    );
  }
}
