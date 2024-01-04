import 'package:flutter/material.dart';
import 'package:kilofoodie/constant/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final borderRadius = BorderRadius.circular(20);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Container(
              height: size.height * .17,
              child: Stack(
                children: [
                  Container(
                    height: size.height * .10,
                    decoration: BoxDecoration(
                      color: Constants.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(4), // Border width
                      decoration: BoxDecoration(
                        color: Constants.White,
                        borderRadius: borderRadius,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3), // Offset in x and y
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: borderRadius,
                        child: Image.asset(
                          'assets/images/image-acc.jpg',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Trevor Sathia',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'trevorsathia@gmail.com',
              style: TextStyle(color: Constants.formtextcolor),
            ),
            Text(
              '+855 678 986 890',
              style: TextStyle(color: Constants.formtextcolor),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                print('you printed edit profile');
              },
              child: Container(
                width: 150,
                height: 45,
                child: Center(
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Constants.White, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Constants.primaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
