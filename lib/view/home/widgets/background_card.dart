import 'package:flutter/material.dart';
import '../../../core/color/colors.dart';
import 'custom_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 700,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://hips.hearstapps.com/hmg-prod/images/best-movies-on-netflix-the-mother-6478b59716093.jpg?crop=1xw:1xh;center,top&resize=980:*"),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0,
          left: -10,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomButton(icon: Icons.add, title: "My List"),
              _playButton(),
              const CustomButton(icon: Icons.info, title: "Info"),
            ],
          ),
        )
      ],
    );
  }
}

TextButton _playButton() {
  return TextButton.icon(
      onPressed: () {},
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhiteColor)),
      icon: const Icon(
        Icons.play_arrow,
        color: kBlackColor,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Play",
          style: TextStyle(fontSize: 20, color: kBlackColor),
        ),
      ));
}