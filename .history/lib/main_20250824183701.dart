import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/colors.dart';

import 'package:my_portfolio/widgets/about.dart';
import 'package:my_portfolio/widgets/contact.dart';

import 'package:my_portfolio/widgets/header_marquee.dart';
import 'package:my_portfolio/widgets/intro_section.dart';
import 'package:my_portfolio/widgets/portfolio_section.dart';

import 'package:my_portfolio/widgets/services.dart';
import 'package:my_portfolio/widgets/skills.dart';
import 'package:my_portfolio/widgets/stat_section.dart';
import 'package:my_portfolio/widgets/testimonial_slider.dart';


void main() {
  runApp(PortfolioWebsite());
}

class PortfolioWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Huzaifa Yasin-Flutter Dev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatefulWidget {
  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  final GlobalKey homeKey = GlobalKey();

  final GlobalKey aboutKey = GlobalKey();

  final GlobalKey projectsKey = GlobalKey();

  final GlobalKey contactKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
   String _activeSection = 'Home'; 
  
  void scrollToSection(GlobalKey key, BuildContext context,String sectionName) {
     setState(() => _activeSection = sectionName);
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
     bool isMobile=false;
    if(width<800){
      isMobile=true;
      setState(() {
        
      });
    }
    return Scaffold(
      backgroundColor: maincolor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: textPrimaryHeading),
        backgroundColor: maincolor,
        clipBehavior: Clip.antiAlias,
        toolbarHeight: 100,
        flexibleSpace: HeaderMarqueeText(text: '🚀 Flutter Developer  • Available for Freelance Work',textColor: textPrimaryHeading,),
        //title: HeaderMarqueeText(text: '🚀 Flutter Developer  • Available for Freelance Work',textColor: Colors.black,),
        // title: Padding(
        //   padding: const EdgeInsets.only(left:70.0,right: 70),
        //   child:  isMobile?CircleAvatar(
        //       radius: 30,
        //       backgroundImage: AssetImage('assets/logo.png',),
        //     ):
        //   Align(
        //     alignment: Alignment.bottomLeft,
        //     child: CircleAvatar(
        //       radius: 30,
        //       backgroundImage: AssetImage('assets/logo.png',),
        //     ),
        //   ),
          
        // ),
        centerTitle: true,
        elevation: 0,
         actions:[ _navButton(context, 'Home', homeKey),
                _navButton(context, 'About', aboutKey),
                 _navButton(context, 'Services', servicesKey),
                _navButton(context, 'Projects', projectsKey),
                _navButton(context, 'Contact', contactKey),
                ],
              //  leading: !isMobile?null:Icon(Icons.menu),
      ),
      
     
      body: SingleChildScrollView(
  child: Column(
    children: [
      IntroSection(key: homeKey),
      StatsSection(),

      AboutMe(key: aboutKey,),
      SkillsSection(key: skillsKey,),
      Text("Services",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
      Flex(
        direction: Axis.vertical,
        //height: height*2.4,
        children: [ServicesSection(key: servicesKey,),]
      ),
      PortfolioSection(key: projectsKey,),

      TestimonialsSection(),
      // PricingSection(),
      ContactSection(key: contactKey,),
      buildfooter()
    ],
  ),
),

    );
  }

  Widget _navButton(BuildContext context, String title, GlobalKey key) {
    final bool isActive = (_activeSection == title);
    return TextButton(
      onPressed: () => scrollToSection(key, context,title),
      child: Text(title, style: TextStyle(color: isActive ? textPrimaryHeading : secondaryTextColor,fontSize: 20)),
    );
  }
  Widget buildfooter() {
    return Container(
      color: maincolor,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Wrap(
            spacing: 20,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              _navButton(context, 'Home', homeKey),
               _navButton(context, 'About', aboutKey),
                 _navButton(context, 'Services', servicesKey),
                _navButton(context, 'Projects', projectsKey),
                _navButton(context, 'Contact', contactKey),
             
            ],
          ),
          SizedBox(height: 20),
          Text(
            '© 2025 Huzaifa Yasin. All rights reserved.',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
  



}

