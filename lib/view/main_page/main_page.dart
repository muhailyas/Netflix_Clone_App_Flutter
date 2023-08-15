import 'package:flutter/material.dart';
import 'package:netflix_clone_app/view/downloads/screen_downloads.dart';
import 'package:netflix_clone_app/view/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_clone_app/view/home/screen_home.dart';
import 'package:netflix_clone_app/view/main_page/wigets/bottom_nav_bar.dart';
import 'package:netflix_clone_app/view/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_clone_app/view/search/screen_search.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final List pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: bottomNavigationNotifier,
          builder: (context, int index, child) {
            return pages[index];
          },
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
