import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/screens/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 2),
      () => Get.off(() => LoginScreen()), // Navigate to LoginScreen after 2 seconds
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              child: Image.asset('assets/images/logo-foodie.png'),
            ),
          ],
        ),
      ),
    );
  }
}
