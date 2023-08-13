import 'package:flutter/material.dart';
import 'package:netflix_clone_app/models/movie.dart';
import '../../../core/color/colors.dart';
import '../../../core/constanst/constants.dart';
import '../../../widgets/video_widget.dart';
import '../../home/widgets/custom_button.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight10,
        Text(
          movie.title,
          style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        kHeight10,
        Text(
          movie.overview,
          style:const TextStyle(color: kGreyColor, fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        kHeight30,
        VideoWidget(image: movie.posterPath),
        kHeight10,
        const Row(
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
