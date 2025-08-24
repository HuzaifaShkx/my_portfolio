import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/colors.dart';
import 'package:dev_icons/dev_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Container(
      // color: Colors.indigo[100],
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      width: double.infinity,
      child: isMobile
          ? Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
               _buildSkill(
                    SvgPicture.asset(
                      'assets/icons/flutter-svgrepo-com.svg',
                      width: 48,
                      height: 48,
                    ),
                    "75",'Flutter',0.75),
                     _buildSkill(
                    SvgPicture.asset(
                      'assets/icons/dart-svgrepo-com.svg',
                      width: 48,
                      height: 48,
                    ),
                    "75",'Dart',0.75),
                    _buildSkill(
                  SvgPicture.asset(
                    'assets/icons/firebase-svgrepo-com.svg',
                    width: 48,
                    height: 48,
                  ),
                  "50",'Firebase',0.50),
                   _buildSkill(
                  SvgPicture.asset(
                    'assets/icons/python-svgrepo-com.svg',
                    width: 48,
                    height: 48,
                  ),
                  "50",'Python',0.50),
                   _buildSkill(
                  SvgPicture.asset(
                    'assets/icons/sql-svgrepo-com.svg',
                    width: 48,
                    height: 48,
                  ),
                  "50",'SQL',0.50),
            ],)
          : Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSkill(
                        SvgPicture.asset(
                          'assets/icons/flutter-svgrepo-com.svg',
                          width: 48,
                          height: 48,
                        ),
                        "75",'Flutter',0.75),
                         _buildSkill(
                        SvgPicture.asset(
                          'assets/icons/dart-svgrepo-com.svg',
                          width: 48,
                          height: 48,
                        ),
                        "75",'Dart',0.75),
                         _buildSkill(
                        SvgPicture.asset(
                          'assets/icons/firebase-svgrepo-com.svg',
                          width: 48,
                          height: 48,
                        ),
                        "50",'Firebase',0.50),
                         _buildSkill(
                        SvgPicture.asset(
                          'assets/icons/python-svgrepo-com.svg',
                          width: 48,
                          height: 48,
                        ),
                        "50",'Python',0.50),
                        _buildSkill(
                        SvgPicture.asset(
                          'assets/icons/sql-svgrepo-com.svg',
                          width: 48,
                          height: 48,
                        ),
                        "50",'SQL',0.50),
                        
                    
                  ],
                )
              ],
            ),
    );
  }

  Widget _buildSkill(Widget svg, String per,String skill,double percent) {
    return CircularPercentIndicator(
      
      radius: 50.0,
      lineWidth: 8.0,
      percent: percent, // 75%
      header: Text("${skill}",style: TextStyle(color: Colors.black,fontSize: 22),),
      footer: Text("${per}%",style: TextStyle(color: textPrimaryHeading,fontSize: 18),),
      center: svg,
      progressColor: textPrimaryHeading,
      backgroundColor: secondaryTextColor,
      animation: true,
      circularStrokeCap: CircularStrokeCap.round,
    );
  }
}
