import 'package:flutter/material.dart';
import '../../../core/constanst/constants.dart';
import '../../../widgets/main_title.widget.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: "Top 10 TV Shows In India Today"),
        kHeight10,
        LimitedBox(
            maxHeight: 250,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => MainNumberCardHome(index: index),
            ))
      ],
    );
  }
}
