import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilofoodie/components/Favorite_screen_comp/favor_food_box.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/screens/Navigation_screen/homescreen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

final HomeController _controller = Get.put(HomeController());

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorites'),
      ),
      body: ListView.builder(
        itemCount: _controller.foodList.length,
        itemBuilder: (context, index) {
          final item = _controller.foodList[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
                          Text(
                            "Fried Chicken",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
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
                                          color: Constants.primaryColor),
                                    ),
                                    TextSpan(
                                      text: '20.00',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Constants.textcolors),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(Icons.star)
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
          ;
        },
      ),
    );
  }
}
