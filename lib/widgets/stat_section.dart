import 'package:flutter/material.dart';
import 'package:my_portfolio/colors.dart';

class StatsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: maincolor,
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      child: Wrap(
        spacing: 20,
        children: [
          _buildStat(1, '+', 'Years Experience'),
          
          _buildStat(10, '+', 'Projects Completed'),
          _buildStat(5, '+', 'Happy Clients'),
          _buildStat(100, '%', 'Client Satisfaction'),
        ],
      ),
    );
  }

  Widget _buildStat(int targetNumber, String suffix, String label) {
    return Column(
      children: [
        TweenAnimationBuilder(
          tween: IntTween(begin: 0, end: targetNumber),
          duration: Duration(seconds: 2),
          builder: (context, value, child) => Text(
            '$value$suffix',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: textPrimaryHeading),
          ),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 16,color: Color(0xfff7f7f7))),
      ],
    );
  }
}
