import 'package:flutter/material.dart';
//import 'package:food_delivery/constants.dart';

class FastFoodDetail extends StatefulWidget {
  const FastFoodDetail({super.key});

  @override
  State<FastFoodDetail> createState() => _FastFoodDetailState();
}

class _FastFoodDetailState extends State<FastFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 10, left: 70),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
