
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mybottom extends StatelessWidget {

  final VoidCallback onPressed;
  Mybottom( {required this.onPressed, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Text(title,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
      ),

    );
  }
}
