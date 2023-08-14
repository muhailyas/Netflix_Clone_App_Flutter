import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';
import 'package:netflix_clone_app/view/widgets/main_card.dart';
import '../../models/movie.dart';
import 'main_title.widget.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard(
      {super.key, required this.title, required this.listNotifier});
  final String title;
  final ValueNotifier<List<Movie>> listNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight10,
        LimitedBox(
            maxHeight: 250,
            child: ValueListenableBuilder(
                valueListenable: listNotifier,
                builder: (context, value, _) {
                  return ListView.builder(
                    itemCount: value.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var data = value[index];
                      return MainCardHome(
                        movie: data,
                      );
                    },
                  );
                }))
      ],
    );
  }
}
