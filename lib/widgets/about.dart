import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/colors.dart';
import 'package:dev_icons/dev_icons.dart';

class AboutMe extends StatelessWidget {
  AboutMe({Key? key}) : super(key: key);

  String abouttext='A Flutter developer is a modern artisan, crafting elegant interfaces and seamless interactions across devices. Guided by Dart and powered by the Flutter engine, they transform static screens into intuitive, animated journeys.\nWith each widget, they build responsive, scalable masterpieces — blending design and logic in harmony. Their canvas is the widget tree; their brush, declarative UI. From mobile to desktop, a single codebase bridges platforms with creativity.\nEvery hot reload fuels their process — fast, expressive, and iterative. Equal parts engineer and artist, the Flutter developer turns code into experience, where performance meets visual storytelling.';
  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Container(
      // color: Colors.indigo[100],
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      width: MediaQuery.of(context).size.width,
      child: isMobile
          ? Column(
              children: [
                Text(
                  "About Me",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "Mobile Application Developer - Software Engineer",
                  style: TextStyle(
                      color: secondaryTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                ),
                
                    Container(
                      //  width: MediaQuery.of(context).size.width*0.5,
                        height: 300,
                        alignment: Alignment.center,
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   borderRadius: BorderRadius.circular(50)
                        // ),

                        child: Image.asset('assets/bnw2.jpg',fit: BoxFit.cover,width: MediaQuery.of(context).size.width*.4,height: MediaQuery.of(context).size.width*.4,alignment: Alignment.center,)),
                    Container(
                      padding: EdgeInsets.all(20),
                      //width: MediaQuery.of(context).size.width*0.5,
                      // height: 400,
                      alignment: Alignment.center,
                      // decoration: BoxDecoration(
                      //   color: Colors.white.withOpacity(0.6),
                      //   borderRadius: BorderRadius.circular(50)
                      // ),
                     // constraints: BoxConstraints(maxWidth: 800),
                      child: Text(
                        abouttext,
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
                        width: MediaQuery.of(context).size.width*0.4,
                        //height: 300,
                        alignment: Alignment.center,
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   borderRadius: BorderRadius.circular(50)
                        // ),

                        child: Image.asset('assets/bnw2.jpg',fit: BoxFit.cover,width: MediaQuery.of(context).size.width*.4,height: MediaQuery.of(context).size.width*.4,alignment: Alignment.center,)),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width*0.5,
                      // height: 400,
                      alignment: Alignment.center,
                      // decoration: BoxDecoration(
                      //   color: Colors.white.withOpacity(0.6),
                      //   borderRadius: BorderRadius.circular(50)
                      // ),
                      constraints: BoxConstraints(maxWidth: 700),
                      child: Text(
                        abouttext,
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
