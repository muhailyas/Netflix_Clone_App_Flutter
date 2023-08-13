import 'package:flutter/material.dart';
import 'package:netflix_clone_app/models/movie.dart';
import '../../../core/color/colors.dart';
import '../../../core/constanst/constants.dart';
import '../../../widgets/video_widget.dart';
import '../../home/widgets/custom_button.dart';
import 'package:intl/intl.dart';

class ComingSoonWidget extends StatelessWidget {
  ComingSoonWidget({super.key, required this.movie});
  final Movie movie;
  final DateFormat monthFormatter = DateFormat('MMM');
  final DateFormat dayFormatter = DateFormat('dd');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 430,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                monthFormatter.format(DateTime.parse(movie.releaseDate)),
                style: const TextStyle(
                    fontSize: 18,
                    color: kGreyColor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                dayFormatter.format(DateTime.parse(movie.releaseDate)),
                style: const TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(image: movie.posterPath),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width - 170,
                    child: Text(
                      movie.title,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -5),
                    ),
                  ),
                  const Row(
                    children: [
                      CustomButton(
                        icon: Icons.notifications_none,
                        title: "Remind Me",
                        iconSize: 25,
                        textSize: 12,
                      ),
                      kWidth10,
                      CustomButton(
                        icon: Icons.info,
                        title: "info",
                        iconSize: 25,
                        textSize: 12,
                      ),
                      kWidth10
                    ],
                  ),
                ],
              ),
              kHeight10,
              const Text("Coming On Friday"),
              kHeight10,
              Text(
                movie.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              Text(
                movie.overview,
                style: const TextStyle(color: kGreyColor),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        )
      ],
    );
  }
}
