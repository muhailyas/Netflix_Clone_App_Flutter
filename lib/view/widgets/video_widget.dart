import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';
import '../fast_laugh/widgets/video_list_item.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("$imagePath$image"), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.30),
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
          ),
        ],
      ),
    );
  }
}
