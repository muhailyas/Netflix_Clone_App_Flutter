import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/color/colors.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';
import 'package:video_player/video_player.dart';

ValueNotifier<bool> muteChangeNotifier = ValueNotifier(false);

class VideoListItem extends StatefulWidget {
  final String imageUrl;
  final String videoUrl;
  const VideoListItem(
      {super.key, required this.imageUrl, required this.videoUrl});

  @override
  State<VideoListItem> createState() => _VideoListItemState();
}

class _VideoListItemState extends State<VideoListItem> {
  late VideoPlayerController _controller;
  bool isPlay = true;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          _controller.value.isPlaying
              ? _controller.pause()
              : _controller.play();
        });
      },
      child: Stack(children: [
        _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(
                  _controller,
                ),
              )
            : const Center(child: CircularProgressIndicator()),
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
                            splashColor: Colors.transparent,
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
                        backgroundImage:
                            NetworkImage("$imagePath${widget.imageUrl}"),
                      ),
                    ),
                    const VideoActionsWidget(
                        icon: Icons.emoji_emotions, title: "LOL"),
                    const VideoActionsWidget(icon: Icons.add, title: "My List"),
                    const VideoActionsWidget(icon: Icons.share, title: "Share"),
                    InkWell(
                      splashFactory: NoSplash.splashFactory,
                      onTap: () {
                        setState(() {
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
                      child: VideoActionsWidget(
                        icon: _controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                        title: "Play",
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ]),
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  const VideoActionsWidget({
    super.key,
    required this.icon,
    required this.title,
  });
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
