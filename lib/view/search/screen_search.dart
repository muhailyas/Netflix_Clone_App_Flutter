import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';
import 'package:netflix_clone_app/view/search/widgets/search_idle.dart';
import 'package:netflix_clone_app/view/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  final searchController = TextEditingController();
  final ValueNotifier<bool> showSearchResult = ValueNotifier(false);

  ScreenSearch({super.key});

  void updateSearchResultVisibility() {
    if (searchController.text.isNotEmpty) {
      showSearchResult.value = true;
    } else {
      showSearchResult.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: CupertinoTextField(
                controller: searchController,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.4),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                prefix: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                ),
                placeholder: 'Search',
                placeholderStyle: const TextStyle(color: Colors.white),
                suffix: ValueListenableBuilder<bool>(
                  valueListenable: showSearchResult,
                  builder: (context, value, child) {
                    return GestureDetector(
                      onTap: () {
                        searchController.clear();
                        updateSearchResultVisibility();
                      },
                      child: child,
                    );
                  },
                  child: ValueListenableBuilder(
                    valueListenable: showSearchResult,
                    builder: (context, value, _) {
                      return Visibility(
                        visible: value,
                        child: const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            CupertinoIcons.xmark_circle_fill,
                            color: Colors.grey,
                            size: 17,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  updateSearchResultVisibility();
                },
              ),
            ),
            kHeight10,
            Expanded(
              child: ValueListenableBuilder<bool>(
                valueListenable: showSearchResult,
                builder: (context, value, child) {
                  return value
                      ? const SearchResult()
                      : const SearchIdleWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
