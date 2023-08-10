import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import '../../../core/constanst/constants.dart';

class MainNumberCardHome extends StatelessWidget {
  const MainNumberCardHome({
    super.key,
    required this.index,
  });
  final int index;

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
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://hips.hearstapps.com/hmg-prod/images/best-movies-on-netflix-right-now-glass-onion-knives-out-6440550f29790.jpg?crop=1xw:1xh;center,top&resize=980:*"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          Positioned(
            left: -2.7,
            bottom: -20,
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
