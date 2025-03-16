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
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    width: MediaQuery.of(context).size.width,
    child: isMobile
        ? Column(
            children: services.map((service) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: servicesCardColor,
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        service['title']!,
                        style: TextStyle(
                            color: textPrimaryHeading,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        service['description']!,
                        style: TextStyle(
                            color: secondaryTextColor, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          )
        : Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: services.map((service) {
              return Container(
                width: MediaQuery.of(context).size.width / 3.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: servicesCardColor,
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      service['title']!,
                      style: TextStyle(
                          color: textPrimaryHeading,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      service['description']!,
                      style:
                          TextStyle(color: secondaryTextColor, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
  );
}

}
