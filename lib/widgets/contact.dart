import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);
  final String linkedInUrl = 'https://www.linkedin.com/in/huzaifa-yasin-developer/';
 final String email = '';
  final String subject = 'Hello';
  final String body = 'This is a test email from Flutter app.';

  Future<void> _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'huzaifayasin225"gmail.com',
      path: email,
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $emailUri';
    }
  }
  Future<void> _launchLinkedInProfile() async {
    final Uri url = Uri.parse(linkedInUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $linkedInUrl';
    }
  }
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
                  TextButton(onPressed: (){
                    _sendEmail();
                  },child: Text("huzaifayasin225@gmail.com",style: TextStyle(color: secondaryTextColor),))
                ],
              
              ),
              SizedBox(width: 8,),
               Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/linkedin-svgrepo-com.svg',width: 48,height: 48,),
              SizedBox(width: 8,),
              TextButton(onPressed: (){
                _launchLinkedInProfile();
              },child: Text("https://www.linkedin.com/in/huzaifa-yasin-developer",style: TextStyle(color: secondaryTextColor),))
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
                  TextButton(onPressed: (){
                    _sendEmail();
                  },child: Text("huzaifayasin225@gmail.com",style: TextStyle(color: secondaryTextColor),))
                ],
              
              ),
              SizedBox(width: 8,),
               Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/linkedin-svgrepo-com.svg',width: 48,height: 48,),
              SizedBox(width: 8,),
              TextButton(onPressed: (){
                _launchLinkedInProfile();
              },child: Text("https://www.linkedin.com/in/huzaifa-yasin-developer",style: TextStyle(color: secondaryTextColor),))
            ],
          )
            ],
          ),
         

        ],
      ),
    );
  }
}