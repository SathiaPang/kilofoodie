//This File is not in use, the purpose is only for testing

import 'package:flutter/material.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/screens/loginscreen.dart';
import 'package:kilofoodie/screens/signup.dart';

class Loginandsignupbtn extends StatefulWidget {
  const Loginandsignupbtn({Key? key}) : super(key: key);

  @override
  State<Loginandsignupbtn> createState() => _LoginandsignupbtnState();
}

class _LoginandsignupbtnState extends State<Loginandsignupbtn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 243, 33, 33),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
            child: Text(
              "Login".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: 400,
          height: 50,
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignupScreen();
                  },
                ),
              );
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              side: BorderSide(
                  width: 2.5,
                  color: Color.fromARGB(
                      255, 255, 0, 0)), // Set border color to match background
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8), // Set your desired border radius
              ),
            ),
            child: Text(
              //fontWeight: FontWeight.bold,
              "Sign Up".toUpperCase(),
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
