import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';
import 'package:netflix_clone_app/view/fast_laugh/widgets/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: trendingNowListNotifeir.value.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => VideoListItem(
                imageUrl: trendingNowListNotifeir.value[index].posterPath,
              )),
    );
  }
}
