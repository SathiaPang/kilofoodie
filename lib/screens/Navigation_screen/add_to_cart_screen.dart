import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/repository/data.dart';
import 'package:kilofoodie/screens/Navigation_screen/homescreen.dart';

class AddToCartScreen extends StatefulWidget {
  AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

final HomeController _controller = Get.put(HomeController());

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                final item = _controller.foodList[index];
                return FavoriteFoodBox(size, item);
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Container(
              height: size.height * .15,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Time",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.av_timer_outlined,
                              size: 33,
                              color: Constants.primaryColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '25 mins',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'Total Price',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\$ ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Constants.primaryColor,
                                ),
                              ),
                              TextSpan(
                                text: "190.00",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Constants.textcolors,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: size.height * .05,
                          width: size.width * .3,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the border radius as needed
                              ),
                              foregroundColor: Constants.White,
                              backgroundColor: Constants.primaryColor,
                            ),
                            onPressed: () {},
                            child: Text('Place Order'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Constants.White,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding FavoriteFoodBox(Size size, FoodRepo item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        //width: MediaQuery.of(context).size.width,
        height: size.height * .15,
        child: Row(
          children: [
            Container(
              width: size.width * .30,
              height: size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(item.image),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: size.width * .60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.subtitle,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '2\u00D7',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize:
                                Get.height * 0.025, // Responsive font size
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Golden brown fried chicken',
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\$ ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Constants.primaryColor,
                                ),
                              ),
                              TextSpan(
                                text: item.price,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Constants.textcolors,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: RatingBar.builder(
                            initialRating: 4.5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: Get.height * 0.02, // Responsive font size
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              // Handle the rating update
                              print(rating);
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Constants.White,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
      ),
    );
  }
}
