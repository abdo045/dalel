// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:suconboarding/onboarding-page/onboard.dart';
import 'package:page_transition/page_transition.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dalel',
      home:AnimatedSplashScreen(
          duration: 2700,
          splash: Center(
            child: Text('Dalel',style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.w700,
              color: Color(0xff6B4B3E),
              fontFamily: 'Pacifico'
            ),),
          ),
          splashIconSize: 3000,
          nextScreen: const Onboard(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
          backgroundColor: Color(0xffF8F4F9)),
    );
  }
}
