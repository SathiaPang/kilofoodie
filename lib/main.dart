import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilofoodie/screens/homescreen.dart';
import 'package:kilofoodie/screens/loginscreen.dart';
import 'package:kilofoodie/screens/signup.dart';
//import 'package:get_storage/get_storage.dart';
import 'package:kilofoodie/screens/welcomescreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/signup', page: () => SignupScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
    );
  }
}
