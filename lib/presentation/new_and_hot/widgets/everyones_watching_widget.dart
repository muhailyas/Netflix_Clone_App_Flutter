import 'package:flutter/material.dart';
import '../../../core/color/colors.dart';
import '../../../core/constanst/constants.dart';
import '../../../widgets/video_widget.dart';
import '../../home/widgets/custom_button.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight10,
        Text(
          "Friends",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        kHeight10,
        Text(
          "This hit sitcom follows the merry misadvetures of six 20-somthing pals as they navigate the pitfalls of work, life and love in 1990s Manhattan.",
          style: TextStyle(color: kGreyColor, fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        kHeight30,
        VideoWidget(),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.share,
              title: "Share",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth10,
            CustomButton(
              icon: Icons.add,
              title: "My List",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth10,
            CustomButton(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth10
          ],
        ),
        kHeight30
      ],
    );
  }
}
