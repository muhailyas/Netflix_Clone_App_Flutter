import 'dart:math';
import 'package:flutter/material.dart';

class DownloadPageImageWidget extends StatelessWidget {
  const DownloadPageImageWidget(
      {super.key,
      required this.size,
      this.angle = 0,
      required this.imageList,
      required this.margin,
      this.radius = 10});

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
                image: NetworkImage(imageList), fit: BoxFit.cover)),
      ),
    );
  }
}