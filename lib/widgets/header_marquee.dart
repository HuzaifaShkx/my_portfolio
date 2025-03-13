import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class HeaderMarqueeText extends StatelessWidget {
  final String text;
  final double height;
  final double fontSize;
  final Color textColor;

  const HeaderMarqueeText({
    Key? key,
    required this.text,
    this.height = 30,
    this.fontSize = 16,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Marquee(
        text: text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
        scrollAxis: Axis.horizontal,
        blankSpace: 50,
        velocity: 50,
        pauseAfterRound: Duration(seconds: 1),
        startPadding: 10,
        accelerationDuration: Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        decelerationDuration: Duration(milliseconds: 500),
        decelerationCurve: Curves.easeOut,
      ),
    );
  }
}
