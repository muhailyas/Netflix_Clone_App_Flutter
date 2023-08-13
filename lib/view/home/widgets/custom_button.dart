import 'package:flutter/material.dart';
import '../../../core/color/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.icon,
      required this.title,
      this.iconSize = 30,
      this.textSize = 18,
      this.letterSpacing = 0});
  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;
  final double letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: kWhiteColor,
        ),
        Text(
          title,
          style: TextStyle(fontSize: textSize, letterSpacing: letterSpacing),
        ),
      ],
    );
  }
}
