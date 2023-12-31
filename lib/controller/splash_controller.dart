import 'dart:async';

import 'package:get/get.dart';
import 'package:kilofoodie/controller/auth_Controller.dart';
import 'package:kilofoodie/screens/Navigation_screen/homescreen.dart';
import 'package:kilofoodie/screens/loginscreen.dart';

class SplashController extends GetxController {
  late Timer? _timer;

  void intiSplashScreen() async {
    AuthController authController = Get.find();

    _timer = Timer(
      Duration(seconds: 3),
      () => authController.isLogin()
          ? Get.offAll(() => HomeScreen())
          : Get.offAll(() => LoginScreen()),
    );
  }
  @override
    // This  is cancel the timer, to prevent any leaking.
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
