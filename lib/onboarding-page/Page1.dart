
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:suconboarding/Screenlogin/login.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key, required this.onPressed,});

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xffF8F4F9),
        child: Column(
          children: [
            SizedBox(
              height:80 ,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Login();
                }));
              }, child: Text('Skip',textAlign: TextAlign.left,style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black
              ),),
              ),
            ),

            Image.asset('assets/images/Frame 1.png'),
            SizedBox(height: 50,),
            Text('Explore The history with \n Dalel in a smart way',style:TextStyle(
              fontSize: 24,fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,),
            SizedBox(height: 30,),
            Text('Using our app’s history libraries\n you can find many historical periods',style:TextStyle(
                fontSize: 16,fontWeight: FontWeight.w300
            ),
              textAlign: TextAlign.center,),

      SizedBox(height: 90,),


      Container(
        width: 300,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(10),
              right: Radius.circular(10)
          ),
          color: Color(0xffC49E85),
        ),

        child:  MaterialButton(
          onPressed:onPressed,
          child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w800),),
        ),

      )
          ],
        ),
      ),
    );
  }
}
