import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_app/controller/debouncer.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';
import 'package:netflix_clone_app/view/search/widgets/search_idle.dart';
import 'package:netflix_clone_app/view/search/widgets/search_result.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  bool changer = false;
  final searchController = TextEditingController();
  final _debonucer = Debouncer(delay: const Duration(milliseconds: 500));
  final ValueNotifier<bool> showSearchResult = ValueNotifier(false);

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
                        setState(() {
                          showSearchResult.value = false;
                          changer = false;
                        });
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
                onChanged: (value) async {
                  _debonucer.call(() {
                    setState(() {
                      changer = true;
                      showSearchResult.value = true;
                      if (searchController.text.isEmpty) {
                        changer = false;
                        showSearchResult.value = false;
                      }
                    });
                  });
                },
              ),
            ),
            kHeight10,
            Expanded(
              child: changer
                  ? SearchResult(
                      result: searchController.text,
                    )
                  : const SearchIdleWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
