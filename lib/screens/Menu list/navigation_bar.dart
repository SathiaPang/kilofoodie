import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/screens/Navigation_screen/add_to_cart_screen.dart';
import 'package:kilofoodie/screens/Navigation_screen/favorite_screen.dart';
import 'package:kilofoodie/screens/Navigation_screen/homescreen.dart';
import 'package:kilofoodie/screens/Navigation_screen/notification_screen.dart';
import 'package:kilofoodie/screens/Navigation_screen/profile_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Container(
      child: Scaffold(
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
        bottomNavigationBar: Obx(
          () => SalomonBottomBar(
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            items: controller.bottomBarItems,
          ),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    const FavoriteScreen(),
    const AddToCartScreen(),
    const NotifiScreen(),
    const ProfileScreen(),
  ];

  final bottomBarItems = [
    SalomonBottomBarItem(
      icon: const Icon(Icons.home),
      title: const Text("Home"),
      selectedColor: Constants.primaryColor,
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.favorite_border),
      title: const Text("Favorite"),
      selectedColor: Constants.primaryColor,
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.shopping_cart),
      title: const Text("Cart"),
      selectedColor: Constants.primaryColor,
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.notifications),
      title: const Text("Notification"),
      selectedColor: Constants.primaryColor,
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.person),
      title: const Text("Profile"),
      selectedColor: Constants.primaryColor,
    ),
  ];
}
