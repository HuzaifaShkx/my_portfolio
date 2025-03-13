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
            children: [
               _buildSkill(
                    SvgPicture.asset(
                      'assets/icons/flutter-svgrepo-com.svg',
                      width: 48,
                      height: 48,
                    ),
                    "75",'Flutter'),
                     _buildSkill(
                    SvgPicture.asset(
                      'assets/icons/dart-svgrepo-com.svg',
                      width: 48,
                      height: 48,
                    ),
                    "75",'Dart'),
                    _buildSkill(
                  SvgPicture.asset(
                    'assets/icons/firebase-svgrepo-com.svg',
                    width: 48,
                    height: 48,
                  ),
                  "50",'Firebase'),
                   _buildSkill(
                  SvgPicture.asset(
                    'assets/icons/python-svgrepo-com.svg',
                    width: 48,
                    height: 48,
                  ),
                  "50",'Python'),
                   _buildSkill(
                  SvgPicture.asset(
                    'assets/icons/sql-svgrepo-com.svg',
                    width: 48,
                    height: 48,
                  ),
                  "50",'SQL'),
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
                        "75",'Flutter'),
                         _buildSkill(
                        SvgPicture.asset(
                          'assets/icons/dart-svgrepo-com.svg',
                          width: 48,
                          height: 48,
                        ),
                        "75",'Dart'),
                         _buildSkill(
                        SvgPicture.asset(
                          'assets/icons/firebase-svgrepo-com.svg',
                          width: 48,
                          height: 48,
                        ),
                        "50",'Firebase'),
                         _buildSkill(
                        SvgPicture.asset(
                          'assets/icons/python-svgrepo-com.svg',
                          width: 48,
                          height: 48,
                        ),
                        "50",'Python'),
                        _buildSkill(
                        SvgPicture.asset(
                          'assets/icons/sql-svgrepo-com.svg',
                          width: 48,
                          height: 48,
                        ),
                        "50",'SQL'),
                        
                    
                  ],
                )
              ],
            ),
    );
  }

  Widget _buildSkill(Widget svg, String per,String skill) {
    return CircularPercentIndicator(
      radius: 50.0,
      lineWidth: 8.0,
      percent: 0.75, // 75%
      header: Text("${skill}",style: TextStyle(color: Colors.grey,fontSize: 22),),
      footer: Text("${per}%",style: TextStyle(color: textPrimaryHeading,fontSize: 18),),
      center: svg,
      progressColor: textPrimaryHeading,
      backgroundColor: Colors.grey,
      animation: true,
      circularStrokeCap: CircularStrokeCap.round,
    );
  }
}
