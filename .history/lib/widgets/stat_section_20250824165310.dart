import 'package:flutter/material.dart';
import 'package:my_portfolio/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StatsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration( 
        color: servicesCardColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: textPrimaryHeading,width: 2),
        ),
      
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      child: Wrap(
        alignment: WrapAlignment.center,
        direction: Axis.horizontal,
        spacing: 20,
        children: [
          _buildStat(1, '+', 'Years Experience'),
        
          _buildStat(10, '+', 'Projects Completed'),
          _buildStat(5, '+', 'Happy Clients'),
          _buildStat(90, '%', 'Client Satisfaction'),
        ],
      ),
    );
  }

  Widget _buildStat(int targetNumber, String suffix, String label) {
    return Column(
      children: [
        CircularPercentIndicator(
          animation: true,
          lineWidth: 8.0,
          radius: 50,
          backgroundColor:textPrimaryHeading ,
          progressColor: textPrimaryHeading,
          center: TweenAnimationBuilder(
            tween: IntTween(begin: 0, end: targetNumber),
            duration: Duration(seconds: 2),
            builder: (context, value, child) => Text(
              '$value$suffix',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: textPrimaryHeading),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 16,color: textPrimaryHeading)),
      ],
    );
  }
}
