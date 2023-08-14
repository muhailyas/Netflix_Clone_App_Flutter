import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';
import 'package:netflix_clone_app/view/widgets/app_bar_widget.dart';
import 'widgets/smart_downloads.dart';
import 'package:netflix_clone_app/view/downloads/widgets/section2.dart';
import 'package:netflix_clone_app/view/downloads/widgets/section3.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [const SmartDownloads(), const Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
            itemBuilder: (context, index) => _widgetList[index],
            separatorBuilder: (context, index) => kHeight20,
            itemCount: _widgetList.length),
      ),
    );
  }
}
