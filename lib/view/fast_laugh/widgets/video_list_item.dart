import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/color/colors.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';

ValueNotifier<bool> muteChangeNotifier = ValueNotifier(false);

class VideoListItem extends StatelessWidget {
  final String imageUrl;
  const VideoListItem({super.key,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("$imagePath$imageUrl"), fit: BoxFit.cover)),
      ),
      Positioned(
        bottom: 10,
        left: 10,
        right: 15,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.35),
                radius: 30,
                child: ValueListenableBuilder(
                    valueListenable: muteChangeNotifier,
                    builder: (context, value, _) {
                      return IconButton(
                          color: Colors.white,
                          onPressed: () {
                            updateMute(value);
                          },
                          icon: Icon(value
                              ? CupertinoIcons.volume_down
                              : CupertinoIcons.volume_off));
                    }),
              ),
               Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      radius: 34,
                      backgroundImage: NetworkImage(
                          "$imagePath$imageUrl"),
                    ),
                  ),
                  const VideoActionsWidget(icon: Icons.emoji_emotions, title: "LOL"),
                  const VideoActionsWidget(icon: Icons.add, title: "My List"),
                  const VideoActionsWidget(icon: Icons.share, title: "Share"),
                  const VideoActionsWidget(icon: Icons.play_arrow, title: "Play"),
                ],
              )
            ]),
      )
    ]);
  }
}

class VideoActionsWidget extends StatelessWidget {
  const VideoActionsWidget(
      {super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhiteColor,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(color: kWhiteColor),
          ),
        ],
      ),
    );
  }
}

void updateMute(bool value) {
  if (value) {
    muteChangeNotifier.value = false;
  } else {
    muteChangeNotifier.value = true;
  }
}
