import 'package:flutter/material.dart';
import '../../../core/color/colors.dart';
import '../../../core/constanst/constants.dart';
import '../../../widgets/video_widget.dart';
import '../../home/widgets/custom_button.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 430,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(fontSize: 16, color: kGreyColor),
              ),
              Text(
                "11",
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 430,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "THE RED DOOR",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -5),
                  ),
                  Row(
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
               Text("Coming On Friday"),
              kHeight10,
              Text(
                "The Red Door",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              Text(
                "Josh Lambert heads east to drop his son, Dalton, off at school. However, Dalton's college dream soon becomes a living nightmare when the repressed demons of his past suddenly return to haunt them both.",
                style: TextStyle(color: kGreyColor),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        )
      ],
    );
  }
}
