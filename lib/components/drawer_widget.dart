import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/screens/Menu%20list/navigation_bar.dart';
import 'package:kilofoodie/screens/Navigation_screen/homescreen.dart';

class Drawer_Widgets extends StatefulWidget {
  const Drawer_Widgets({
    Key? key,
  }) : super(key: key);

  @override
  State<Drawer_Widgets> createState() => _Drawer_WidgetsState();
}

class _Drawer_WidgetsState extends State<Drawer_Widgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Constants.White,
      ),
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: ListView(
          shrinkWrap: true,
          children: [
            // Drawer header if needed
            UserAccountsDrawerHeader(
              accountName: Text('Sathia Pang'),
              accountEmail: Text('sathia.pang@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/image-acc.jpg'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/image-background.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // List item for HomeScreen
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('My Profile'),
              onTap: () {
                Get.to(() => NavigatorBar());
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('My Favorites'),
              onTap: () {
                Get.to(() => NavigatorBar());
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Cart'),
              onTap: () {
                Get.to(() => NavigatorBar());
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Setting'),
              onTap: () {
                Get.to(() => NavigatorBar());
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('About Us'),
              onTap: () {
                Get.to(() => NavigatorBar());
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Privacy Policy'),
              onTap: () {
                Get.to(() => NavigatorBar());
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Terms & Conditions'),
              onTap: () {
                Get.to(() => NavigatorBar());
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Get.to(() => NavigatorBar());
              },
            ),
          ],
        ),
      ),
    );
  }
}
