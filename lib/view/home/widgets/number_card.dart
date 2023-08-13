import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_app/models/movie.dart';
import '../../../core/constanst/constants.dart';

class MainNumberCardHome extends StatelessWidget {
  const MainNumberCardHome(
      {super.key, required this.index, required this.movie});
  final int index;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                height: 250,
                width: 30,
              ),
              Container(
                width: 150,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: kRadius10,
                    image: DecorationImage(
                        image: NetworkImage("$imagePath${movie.posterPath}"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          Positioned(
            left: -6,
            bottom: -25,
            child: BorderedText(
              strokeWidth: 5.0,
              strokeJoin: StrokeJoin.miter,
              strokeColor: Colors.white,
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 125,
                  fontWeight: FontWeight.bold,
                  fontFamily: "system-ui",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
