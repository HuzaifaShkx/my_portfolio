import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/colors.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final width=MediaQuery.of(context).size.width;
    bool isMobile=false;
    if(width<800){
      isMobile=true;
    }
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Contact Me",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
          isMobile? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/gmail-svgrepo-com.svg',width: 48,height: 48,),
                  SizedBox(width: 8,),
                  Text("huzaifayasin225@gmail.com",style: TextStyle(color: secondaryTextColor),)
                ],
              
              ),
              SizedBox(width: 8,),
               Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/linkedin-svgrepo-com.svg',width: 48,height: 48,),
              SizedBox(width: 8,),
              Text("https://www.linkedin.com/in/huzaifa-yasin-developer",style: TextStyle(color: secondaryTextColor),)
            ],
          )
            ],
          ):Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/gmail-svgrepo-com.svg',width: 48,height: 48,),
                  SizedBox(width: 8,),
                  Text("huzaifayasin225@gmail.com",style: TextStyle(color: secondaryTextColor),)
                ],
              
              ),
              SizedBox(width: 8,),
               Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/linkedin-svgrepo-com.svg',width: 48,height: 48,),
              SizedBox(width: 8,),
              Text("https://www.linkedin.com/in/huzaifa-yasin-developer",style: TextStyle(color: secondaryTextColor),)
            ],
          )
            ],
          ),
         

        ],
      ),
    );
  }
}