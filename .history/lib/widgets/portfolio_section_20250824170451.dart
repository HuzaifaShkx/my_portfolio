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
    final width=MediaQuery.of(context).size.width;
    bool isMobile=false;
    if(width<800){
      isMobile=true;
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: maincolor,
      ),
      
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('My Work', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.black))),
          SizedBox(height: 20),
          isMobile?Column(
            
            children: projects
                .map((title) => Container(
                  margin: EdgeInsets.all(8),
                      width: width*.8,
                      height: 160,
                      decoration: BoxDecoration(
                        color: servicesCardColor,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      
                      padding: EdgeInsets.all(16),
                      child: Center(
                        child: Text(title,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: textPrimaryHeading),textAlign: TextAlign.center,),
                      ),
                    ))
                .toList(),
          ):Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: projects
                .map((title) => Container(
                      width: 300,
                      height: 160,
                      decoration: BoxDecoration(
                        color: servicesCardColor,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      
                      padding: EdgeInsets.all(16),
                      child: Center(
                        child: Text(title,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: textPrimaryHeading),textAlign: TextAlign.center,),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
