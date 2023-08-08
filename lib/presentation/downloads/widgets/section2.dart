import 'package:flutter/material.dart';
import '../../../core/constanst/constants.dart';
import 'image_widget.dart';

class Section2 extends StatelessWidget {
  Section2({super.key});
  final imageList = [
    "https://hips.hearstapps.com/hmg-prod/images/best-movies-on-netflix-right-now-glass-onion-knives-out-6440550f29790.jpg?crop=1xw:1xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod/images/best-movies-on-netflix-bullet-train-644ff741d6b46.jpeg?crop=1xw:1xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod/images/best-movies-on-netflix-the-mother-6478b59716093.jpg?crop=1xw:1xh;center,top&resize=980:*",
  ];
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Indroducing downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        kHeight10,
        const Text(
          "We will download a personalized selection of movies and shows for you, so there is always something to watch on your device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kHeight10,
        SizedBox(
          height: size.width,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: size.width * 0.395,
                ),
              ),
              DownloadPageImageWidget(
                imageList: imageList[0],
                margin: const EdgeInsets.only(left: 210, bottom: 30),
                angle: 15,
                size: Size(size.width * 0.35, size.width * .56),
              ),
              DownloadPageImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 210, bottom: 30),
                angle: -15,
                size: Size(size.width * 0.35, size.width * .56),
              ),
              DownloadPageImageWidget(
                imageList: imageList[2],
                margin: const EdgeInsets.only(top: 5),
                size: Size(size.width * 0.47, size.width * .64),
              ),
            ],
          ),
        ),
      ],
    );
  }
}