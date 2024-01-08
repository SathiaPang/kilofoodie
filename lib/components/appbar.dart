import 'package:flutter/material.dart';
import 'package:kilofoodie/constant/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey, // Correct parameter name
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                width: 50,
                height: 50,
                transform: Matrix4.rotationZ(45 * 3.1415927 / 180),
                decoration: BoxDecoration(
                  color: Constants.White,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 2.0),
                    ),
                  ],
                ),
                transformAlignment: Alignment.center,
                child: Transform.rotate(
                  angle: 5.5,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.menu,
                      size: 28,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                ),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/logo-nestle.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
