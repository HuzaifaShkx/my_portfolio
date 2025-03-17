import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/colors.dart';
import 'package:my_portfolio/widgets/gradientAvatar.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({Key? key}) : super(key: key);
  final List<Color> gradientColors=const [Color(0xFF3E3E6B), Color(0xFF9B59B6)];
  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: gradientColors,
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomRight,
      //   ),
      // ),
     // color: Colors.indigo[100],
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      width: double.infinity,
      child: isMobile
          ? Column(
              children: [
                CircleAvatar(
                  
                  radius: 80,
                  backgroundImage: AssetImage('assets/bnw3.jpg'),
                ),
                SizedBox(height: 20),
                _introTexts(),
                // Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: InkWell(
                //         onTap: () async {
                //           const url = 'files/cv.pdf';
                //           if (await canLaunchUrl(Uri.parse(url))) {
                //             await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault);
                //           }
                //         },
                //         child: Container(
                //           padding: EdgeInsets.all(9),
                //           decoration: BoxDecoration(
                //             border: Border.all(),
                //             borderRadius: BorderRadius.circular(10)
                //           ),
                //           //icon: Icon(Icons.download, color: Colors.white),
                //           child: Text("Download CV", style: TextStyle(color: Colors.white)),
                //         ),
                //       ),
                //     ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    _introTexts(),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: InkWell(
                    //     onTap: () async {
                    //       const url = 'files/cv.pdf';
                    //       if (await canLaunchUrl(Uri.parse(url))) {
                    //         await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault);
                    //       }
                    //     },
                    //     child: Container(
                    //       padding: EdgeInsets.all(9),
                    //       decoration: BoxDecoration(
                    //         border: Border.all(),
                    //         borderRadius: BorderRadius.circular(10),
                    //         color: textPrimaryHeading

                    //       ),
                    //       //icon: Icon(Icons.download, color: Colors.white),
                    //       child: Text("Download CV", style: TextStyle(color: Colors.white)),
                    //     ),
                    //   ),
                    // ),
  


                  ],
                ),
                
                CircleAvatar(
                  
                  radius: 200,
                  backgroundImage: AssetImage('assets/bnw3.jpg'),
                ),
              ],
            ),
    );
  }

  Widget _introTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, I\'m ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: secondaryTextColor),
        ),
        Text(
          'Huzaifa Yasin 👋',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: Color(0xff979797)),
        ),
        SizedBox(height: 10),
        Container(
          height: 150,
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Flutter Developer',
                textStyle: TextStyle(fontSize: 40, color:textPrimaryHeading,fontWeight: FontWeight.bold ),
                speed: Duration(milliseconds: 100),
              ),
              TypewriterAnimatedText(
                'Mobile & Web Specialist',
                textStyle: TextStyle(fontSize: 40, color: textPrimaryHeading,fontWeight: FontWeight.bold),
                speed: Duration(milliseconds: 100),
              ),
              TypewriterAnimatedText(
                'Clean & Responsive UI Designer',
                textStyle: TextStyle(fontSize: 40, color: textPrimaryHeading,fontWeight: FontWeight.bold),
                speed: Duration(milliseconds: 100),
              ),
            ],
            repeatForever: true,
            pause: Duration(milliseconds: 1500),
          ),
        ),
      ],
    );
  }
}
