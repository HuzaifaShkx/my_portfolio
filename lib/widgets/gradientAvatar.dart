import 'package:flutter/material.dart';

class GradientAvatar extends StatelessWidget {
  final double radius;
  final ImageProvider image;
  final List<Color> gradientColors;

  const GradientAvatar({
    Key? key,
    required this.radius,
    required this.image,
    this.gradientColors = const [Color(0xFF3E3E6B), Color(0xFF9B59B6)],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(4), // Thickness of the gradient border
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            //color: Colors.white, // Background behind the image
          ),
          child: ClipOval(
            child: Image(
              image: image,
              fit: BoxFit.cover,
              width: radius * 2 - 8,
              height: radius * 2 - 8,
            ),
          ),
        ),
      ),
    );
  }
}
