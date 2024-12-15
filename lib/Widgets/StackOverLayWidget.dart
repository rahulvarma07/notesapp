// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'NoteBorder.dart';

class StackOverLay extends StatelessWidget {
  final double x1;
  final double x2;
  final double y1;
  final double y2;
  final Color colorsData1;
  final Color colorsData2;
  const StackOverLay({
    super.key,
    required this.x1,
    required this.y1,
    required this.x2,
    required this.y2,
    required this.colorsData1,
    required this.colorsData2
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.rotate(
            alignment: Alignment(x1, y1),
            angle: 1,
            child: HomeNoteBorder(ColorData: colorsData1,),
        ),
        Transform.rotate(
          alignment: Alignment(x2, y2),
          angle: 1,
          child: HomeNoteBorder(ColorData: colorsData2,),
        ),
      ],
    );
  }
}

// -0.4, -0.6, 0.6, 0.7