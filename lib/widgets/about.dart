import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/colors.dart';
import 'package:dev_icons/dev_icons.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Container(
      // color: Colors.indigo[100],
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      width: double.infinity,
      child: isMobile
          ? Column(
              children: [
                Text(
                  "About Me",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "Mobile Application Developer - Software Engineer",
                  style: TextStyle(
                      color: secondaryTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                ),
                
                    Container(
                        width: 300,
                        height: 300,
                        alignment: Alignment.center,
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   borderRadius: BorderRadius.circular(50)
                        // ),

                        child: Image.asset('assets/bnw2.jpg')),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 650,
                      // height: 400,
                      alignment: Alignment.center,
                      // decoration: BoxDecoration(
                      //   color: Colors.white.withOpacity(0.6),
                      //   borderRadius: BorderRadius.circular(50)
                      // ),
                      constraints: BoxConstraints(maxWidth: 700),
                      child: Text(
                        "A Flutter developer, the modern-day artisan of digital experiences, crafts elegant interfaces and seamless interactions across the canvas of devices. Guided by the harmony of Dart syntax and powered by the Flutter engine, they orchestrate pixels and performance into visual symphonies. Their fingertips sketch fluid gestures, animations, and transitions, breathing soul into static screens and transforming concepts into intuitive journeys.\nWith each widget, they compose responsive masterpieces — adaptable, scalable, and beautifully engineered. Their playground is the widget tree; their brush, declarative UI. They sculpt code that transcends platforms, fusing design with logic in perfect harmony. In this cross-platform atelier, they bridge iOS and Android, web and desktop, with a single codebase and limitless imagination.\nEvery hot reload is a heartbeat in their creative process — rapid, iterative, and expressive. They don the mantle of UX visionary, performance optimizer, and problem solver. Debugging becomes poetry, architecture becomes art, and every line of code whispers functionality with finesse.\nIn this digital realm, the Flutter developer is both engineer and artist — building apps not just for use, but for experience.",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      ),
                    ),
                  
               
              ],
            )
          : Column(
              children: [
                Text(
                  "About Me",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "Mobile Application Developer - Software Engineer",
                  style: TextStyle(
                      color: secondaryTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: 300,
                        height: 300,
                        alignment: Alignment.center,
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   borderRadius: BorderRadius.circular(50)
                        // ),

                        child: Image.asset('assets/bnw2.jpg')),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 650,
                      // height: 400,
                      alignment: Alignment.center,
                      // decoration: BoxDecoration(
                      //   color: Colors.white.withOpacity(0.6),
                      //   borderRadius: BorderRadius.circular(50)
                      // ),
                      constraints: BoxConstraints(maxWidth: 700),
                      child: Text(
                        "A Flutter developer, the modern-day artisan of digital experiences, crafts elegant interfaces and seamless interactions across the canvas of devices. Guided by the harmony of Dart syntax and powered by the Flutter engine, they orchestrate pixels and performance into visual symphonies. Their fingertips sketch fluid gestures, animations, and transitions, breathing soul into static screens and transforming concepts into intuitive journeys.\nWith each widget, they compose responsive masterpieces — adaptable, scalable, and beautifully engineered. Their playground is the widget tree; their brush, declarative UI. They sculpt code that transcends platforms, fusing design with logic in perfect harmony. In this cross-platform atelier, they bridge iOS and Android, web and desktop, with a single codebase and limitless imagination.\nEvery hot reload is a heartbeat in their creative process — rapid, iterative, and expressive. They don the mantle of UX visionary, performance optimizer, and problem solver. Debugging becomes poetry, architecture becomes art, and every line of code whispers functionality with finesse.\nIn this digital realm, the Flutter developer is both engineer and artist — building apps not just for use, but for experience.",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
               
              ],
            ),
    );
  }
}
