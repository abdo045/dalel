// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Screenlogin/login.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key, required this.onPressed,});

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

            Image.asset('assets/images/pana.png'),
            SizedBox(height: 50,),

            Text('From every place\n on earth',style:TextStyle(
                fontSize: 24,fontWeight: FontWeight.w500
            ),
              textAlign: TextAlign.center,),
            SizedBox(height: 50,),
            Text('A big variety of ancient places\n from all over the world',style:TextStyle(
                fontSize: 16,fontWeight: FontWeight.w300
            ),
              textAlign: TextAlign.center,),

            SizedBox(height: 85,),

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