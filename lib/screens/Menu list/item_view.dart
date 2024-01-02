import 'package:flutter/material.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/repository/data.dart';

class Item_View extends StatelessWidget {
  const Item_View({
    Key? key,
    required this.food,
  }) : super(key: key);

  final FoodRepo food;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: EdgeInsets.all(10),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Constants.White,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 350, // Adjust the height as needed
            margin: EdgeInsets.all(20), // Adjust the width as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(food.image),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  food.subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Chicken Popcorn",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      '3.5',
                      style:
                          TextStyle(fontSize: 17, color: Constants.textcolors),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$ ',
                        style: TextStyle(
                            fontSize: 20, color: Constants.primaryColor),
                      ),
                      TextSpan(
                        text: '20.00',
                        style: TextStyle(
                            fontSize: 30, color: Constants.primaryColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}