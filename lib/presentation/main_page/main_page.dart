import 'package:flutter/material.dart';
import 'package:netflix_clone_app/presentation/downloads/screen_downloads.dart';
import 'package:netflix_clone_app/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_clone_app/presentation/home/screen_home.dart';
import 'package:netflix_clone_app/presentation/main_page/wigets/bottom_nav_bar.dart';
import 'package:netflix_clone_app/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_clone_app/presentation/search/screen_search.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final List pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
     ScreenSearch(),
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
