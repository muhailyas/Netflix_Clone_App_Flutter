import 'package:flutter/material.dart';
import '../core/constanst/constants.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: kRadius10,
            image: const DecorationImage(
                image: NetworkImage(
                    "https://hips.hearstapps.com/hmg-prod/images/best-movies-on-netflix-right-now-glass-onion-knives-out-6440550f29790.jpg?crop=1xw:1xh;center,top&resize=980:*"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
