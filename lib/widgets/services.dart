import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/colors.dart';
import 'package:dev_icons/dev_icons.dart';
import 'package:my_portfolio/section.dart';

class ServicesSection extends StatelessWidget {
   ServicesSection({Key? key}) : super(key: key);
 List<Map<String, String>> services = [
  {
    'title': 'Mobile App Development',
    'description': 'End-to-end Flutter development for both Android & iOS platforms using modern architecture and performance-optimized practices.',
  },
  {
    'title': 'UI/UX Design',
    'description': 'Crafting intuitive, responsive, and pixel-perfect user interfaces that enhance user experience across all screen sizes.',
  },
  {
    'title': 'API Integration',
    'description': 'Seamless integration with RESTful APIs, Firebase, and custom backends to power dynamic applications.',
  },
  {
    'title': 'Custom Widgets',
    'description': 'Reusable and scalable custom widgets tailored to meet unique business requirements and design systems.',
  },
  {
    'title': 'Performance Optimization',
    'description': 'Improving app speed, memory usage, rendering performance, and responsiveness using best Flutter practices.',
  },
  {
    'title': 'Cross-Platform Consulting',
    'description': 'Technical guidance and architecture planning for businesses looking to scale with Flutter’s single-codebase approach.',
  },
];

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Container(
    
      // color: Colors.indigo[100],
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*1.5,
      child: isMobile
          ?  ListView.builder(itemCount:services.length, 
    shrinkWrap: false,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          //padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: servicesCardColor
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${services[index]['title'].toString()}",style: TextStyle(color: textPrimaryHeading,fontSize: 27),textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text("${services[index]['description'].toString()}",style: TextStyle(color: secondaryTextColor,fontSize: 20),textAlign: TextAlign.center,),
            ),
          ], ),
        ),
      );
    })
          : 
    GridView.builder(itemCount:services.length,gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          //  height: 1000,
          //padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: servicesCardColor
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${services[index]['title'].toString()}",style: TextStyle(color: textPrimaryHeading,fontSize: 24),textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text("${services[index]['description'].toString()}",style: TextStyle(color: secondaryTextColor,fontSize: 20),textAlign: TextAlign.center,),
            ),
          ], ),
        ),
      );
    }));
  }
}
