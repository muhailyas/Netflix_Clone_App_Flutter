import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';
import 'package:netflix_clone_app/view/search/widgets/search_idle.dart';
import 'main_card.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextWidget(text: "Movies & TV"),
        kHeight10,
        Expanded(
            child: ValueListenableBuilder(
                valueListenable: searchResultListNotifeir,
                builder: (context, value, _) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1 / 1.5),
                    itemBuilder: (context, index) {
                      var data = value[index];
                      return MainCard(
                        movie: data,
                      );
                    },
                    itemCount: searchResultListNotifeir.value.length,
                  );
                })),
      ],
    );
  }
}
