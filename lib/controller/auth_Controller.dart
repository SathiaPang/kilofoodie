import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kilofoodie/models/auth_model.dart';
import 'package:kilofoodie/screens/homescreen.dart';
import 'package:kilofoodie/screens/loginscreen.dart';

class AuthController extends GetxController {
  final box = GetStorage();
  Rx<User> user = User(email: "", password: "").obs;

  final Remail = TextEditingController();
  final Rpassword = TextEditingController();
  final Rusername = TextEditingController();
  final Lemail = TextEditingController();
  final Lpassword = TextEditingController();

  void register(String username, String email, String password) async {
    if (username == "" || email == "" || password == "") {
      Get.snackbar("Error", "Field null");
    } else {
      user.value = User(email: email, password: password);
      box.write('user', {'email': email, 'password': password});
      Get.snackbar("Succes", "Register success");
    }
  }

  void login(String email, String password) async {
    if (email == "" || password == "") {
      Get.snackbar("Error", "Field null");
    } else {
      final getUser = box.read('user');
      if (email == getUser?['email'] && password == getUser?['password']) {
        Get.offAll(() => HomeScreen());
        box.write('isLogin', true);
      } else {
        Get.snackbar("Error", "No Account");
      }
    }
  }

  void logout() async {
    box.remove('isLogin');
    Get.offAll(LoginScreen());
  }

  bool isLogin() {
    return box.read('isLogin') ?? false;
  }
}
