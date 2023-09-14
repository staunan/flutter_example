import 'package:flutter/material.dart';
import 'package:flutter_example/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.textField});
  final TextField textField;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          width: 2.5,
          color: kTextColor,
        ),
      ),
      child: textField,
    );
  }
}