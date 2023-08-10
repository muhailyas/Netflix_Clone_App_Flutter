import 'package:flutter/material.dart';
import '../../../core/color/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: kWhiteColor,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
