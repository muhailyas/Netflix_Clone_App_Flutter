import 'package:flutter/material.dart';
import 'package:netflix_clone_app/controller/api/api.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';
import 'package:netflix_clone_app/view/fast_laugh/widgets/video_list_item.dart';

ValueNotifier<List<String>> videoUrls = ValueNotifier<List<String>>([]);

class ScreenFastLaugh extends StatefulWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  State<ScreenFastLaugh> createState() => _ScreenFastLaughState();
}

class _ScreenFastLaughState extends State<ScreenFastLaugh> {
  late Future<List<String>> videoUrlsFuture;

  @override
  void initState() {
    super.initState();
    videoUrlsFuture = Api().getFastLaughVideoUrls();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: videoUrlsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            videoUrls.value = snapshot.data as List<String>;
            return PageView.builder(
              itemCount: videoUrls.value.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => VideoListItem(
                imageUrl: trendingNowListNotifeir.value[index].posterPath,
                videoUrl: videoUrls.value[index],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
