// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Screenlogin/login.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key, required this.onPressed,});

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
              height:120 ,
            ),


            Image.asset('assets/images/frame2.png'),
            SizedBox(height: 50,),

            Text('Using modern AI technology\n for better user experience',style:TextStyle(
                fontSize: 24,fontWeight: FontWeight.w500
            ),
              textAlign: TextAlign.center,),
            SizedBox(height: 30,),

            Text('AI provide recommendations and helps \nyou to continue the search journey',style:TextStyle(
                fontSize: 16,fontWeight: FontWeight.w300
            ),
              textAlign: TextAlign.center,),
            SizedBox(height: 50,),


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
                child: Text('Create Account',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w800),),
              ),

            ),
            SizedBox(height: 10,),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Login();
              }));
            },
                child: Text('Login Now',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff6F6460)
              ),

            ))
          ],
        ),
      ),
    );
  }
}