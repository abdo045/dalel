// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:suconboarding/Screenlogin/createaccount.dart';
import 'package:suconboarding/onboarding-page/Page1.dart';
import 'Page3.dart';
import 'page2.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [PageView(
        controller: _controller,
          children: [

            Page1(onPressed: (){
              _controller.nextPage(duration: Duration(milliseconds: 500), curve:Curves.easeIn);
            }),
            Page2(onPressed: (){
              _controller.nextPage(duration: Duration(milliseconds: 500), curve:Curves.ease);
            }),
            Page3(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Create();
              }));
            }),


          ],
        ),
        Container(
          alignment: Alignment(0,.1),
          child: SmoothPageIndicator(
            controller: _controller,
            count:  3,
            axisDirection: Axis.horizontal,

            effect: ExpandingDotsEffect(
                spacing:  8.0,
                radius:  9.0,
                dotWidth:  18.0,
                dotHeight:  6.0,
                paintStyle:  PaintingStyle.fill,
                strokeWidth:  1.5,
                dotColor: Color(0xffD9D9D9),
                activeDotColor:  Color(0xff6B4B3E)
            )
          ),
        ),
      ]
      )
    );
  }
}
