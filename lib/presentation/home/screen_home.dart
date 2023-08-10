import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone_app/core/constanst/constants.dart';
import 'package:netflix_clone_app/presentation/home/widgets/background_card.dart';
import 'package:netflix_clone_app/presentation/home/widgets/number_title_card.dart';
import '../../widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (context, value, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection scrollDirection = notification.direction;
                if (scrollDirection == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (scrollDirection == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                    ListView(
                    children: const [
                      BackgroundCard(),
                      kHeight10,
                      MainTitleCard(title: "Released in the past year"),
                      MainTitleCard(title: "Trending now"),
                      NumberTitleCard(),
                      MainTitleCard(title: "Tense Dramas"),
                      MainTitleCard(title: "South Indian Cinema"),
                    ],
                  ),
                  scrollNotifier.value
                      ? AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          color: Colors.black.withOpacity(0.2),
                          height: 90,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/netflix logo.png",
                                    width: 60,
                                    height: 60,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  kWidth10,
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  kWidth10
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "TV Shows",
                                    style: homeTitleTextStyle,
                                  ),
                                  Text(
                                    "Movies",
                                    style: homeTitleTextStyle,
                                  ),
                                  Text(
                                    "Categories",
                                    style: homeTitleTextStyle,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      : kHeight10
                ],
              ),
            );
          }),
    );
  }
}
