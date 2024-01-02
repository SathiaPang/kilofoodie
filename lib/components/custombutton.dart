import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.color,
      required this.textcolor,
      required this.borderColor,
      required this.callback});
  final String title;
  final Color color;
  final Color textcolor;
  final Color borderColor;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size.fromHeight(60),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        //There are two ways of using onPressed.
        // onPressed: () {
        //   callback();
        // },
        onPressed: callback,
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
              color: textcolor, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
