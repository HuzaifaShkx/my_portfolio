import 'package:flutter/material.dart';
import 'package:my_portfolio/colors.dart';

class PortfolioSection extends StatelessWidget {
   
  final List<String> projects = [
    'Multi-Modal Emotion Recognition for Stress Analysis',
    'Portfolio Website',
    'EBook App',
    'PDF Conversion Tools App ',
    
  ];
 PortfolioSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: maincolor,
      ),
      
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Work', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.white)),
          SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: projects
                .map((title) => Container(
                      width: 250,
                      height: 160,
                      decoration: BoxDecoration(
                        color: servicesCardColor,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      
                      padding: EdgeInsets.all(16),
                      child: Center(
                        child: Text(title,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: textPrimaryHeading)),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
