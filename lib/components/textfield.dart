import 'package:flutter/material.dart';
import 'package:kilofoodie/constants.dart';

class InfoField extends StatelessWidget {
  final String HintText;
  const InfoField({super.key, required this.HintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Constants.FormFillColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: HintText,
        hintStyle: TextStyle(color: Constants.formtextcolor),
      ),
    );
  }
}
