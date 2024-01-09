import 'package:flutter/material.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/repository/data.dart';

class FoodDetailScreen extends StatelessWidget {
  final FoodRepo food;

  const FoodDetailScreen({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 140,
              backgroundImage: AssetImage(food.image),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: size.width * .10,
              height: size.height * .10,
              color: Constants.primaryColor,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: size.width * 1,
                height: size.height * .39,
                decoration: BoxDecoration(
                  color: Constants.White,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.grey, // You can set your desired shadow color
                      blurRadius: 10.0, // Adjust the blur radius
                      spreadRadius: 2.0, // Adjust the spread radius
                      offset: Offset(
                        0.0, // horizontal offset
                        2.0, // vertical offset
                      ),
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.category,
                        style: TextStyle(color: Constants.formtextcolor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            food.subtitle,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Constants.formtextcolor),
                              ),
                            ],
                          ),
                          Row(
                            children: [],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        food.detail,
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Constants.formtextcolor),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
