import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview/components/footer_text.dart';
import 'package:interview/components/social_icons.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(30),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset('assets/logo.png',width: 300,height: 300,),
                  const Row(
                    children: [
                      SocialIcons(),
                      SocialIcons(),
                      SocialIcons(),
                      SocialIcons(),
                    ],
                  )
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Company',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  FooterText(title: 'Home'),
                  FooterText(title: 'About Us'),
                  FooterText(title: 'Products'),
                  FooterText(title: 'Packing'),
                  FooterText(title: 'Quality Control'),
                  FooterText(title: 'Contact Us'),
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Legal',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  FooterText(title: 'Privacy Policy'),
                  FooterText(title: 'Terms & Conditions'),
                  FooterText(title: 'Terms of uses'),

                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Reach US',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  FooterText(title: '01001119755 / 01148893165 ', iconData: Icons.phone,iconNeed: true,),
                  FooterText(title: 'info@miningeg.com / miningeg.sales01@gmail.com  ', iconData: Icons.email,iconNeed: true,),
                  FooterText(title: '14 El-Obour Buildings , Salah Salem , Cairo , Egypt', iconData: Icons.location_on_outlined,iconNeed: true,),
                ],
              ),
            ],
          ),
        ),
        Divider(color: Colors.grey[200],height: 1,),
        Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          color: Colors.black,
          child: Text('© 2024 All Rights Reserved',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
        )

      ],
    );
  }
}
