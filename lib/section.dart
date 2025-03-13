import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final double height;

  const Section({
    Key? key,
    required this.title,
    required this.description,
    required this.color,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Text(description, style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
