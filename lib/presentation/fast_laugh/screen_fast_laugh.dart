import 'package:flutter/material.dart';
import 'package:netflix_clone_app/presentation/fast_laugh/widgets/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  ScreenFastLaugh({super.key});
  final imageList = [
    "https://hips.hearstapps.com/hmg-prod/images/best-movies-on-netflix-right-now-glass-onion-knives-out-6440550f29790.jpg?crop=1xw:1xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod/images/best-movies-on-netflix-bullet-train-644ff741d6b46.jpeg?crop=1xw:1xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod/images/best-movies-on-netflix-the-mother-6478b59716093.jpg?crop=1xw:1xh;center,top&resize=980:*",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
            3,
            (index) => VideoListItem(
                  index: index,
                  imageUrl: imageList[index],
                )),
      ),
    );
  }
}
