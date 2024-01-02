import 'package:flutter/material.dart';
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
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 250, 249),
      ),
      child: Drawer(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: ListView(
          shrinkWrap: true,
          children: [
            // Drawer header if needed
            UserAccountsDrawerHeader(
              accountName: const Text('Sathia Pang'),
              accountEmail: const Text('sathia.pang@example.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/image-acc.jpg'),
              ),
            ),
            // List item for HomeScreen
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            // Add more items as needed
          ],
        ),
      ),
    );
  }
}
