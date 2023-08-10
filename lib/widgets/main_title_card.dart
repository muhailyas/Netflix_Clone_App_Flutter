import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';
import 'package:netflix_clone_app/widgets/main_card.dart';
import 'main_title.widget.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight10,
        LimitedBox(
            maxHeight: 250,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const MainCardHome(),
            ))
      ],
    );
  }
}
