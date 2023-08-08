import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          size: 30,
          color: Colors.white,
        ),
        kWidth10,
        Text(
          "Smart Downloads",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}