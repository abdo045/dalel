// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widget/bottom.dart';
import 'login.dart';
class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  bool _isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 120,),

                Text('Welcome !',style: TextStyle(
                  fontSize: 29,fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 70,),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,

                    onChanged: (value) {

                    },
                    decoration:const InputDecoration(
                      hintText: 'First Name',
                      labelText: 'First Name',

                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:  Color(0xff6F6460), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff6F6460), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )),
                SizedBox(height: 30,),

                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,

                    onChanged: (value) {

                    },
                    decoration:const InputDecoration(
                      hintText: 'Last Name',
                      labelText: 'Last Name ',
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:  Color(0xff6F6460), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:  Color(0xff6F6460), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )),
                SizedBox(height: 30,),

                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,

                    onChanged: (value) {

                    },
                    decoration:const InputDecoration(
                      hintText: 'Email Address ',
                      labelText: 'Email Address ',
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:  Color(0xff6F6460), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff6F6460), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )),
                SizedBox(height: 30,),

                TextFormField(
                    obscureText: _isSecurePassword,
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    
                    onChanged: (value) {

                    },
                    
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      suffixIcon: togglePassword(),
                      suffixIconColor: Color(0xff999999),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff6F6460), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:  Color(0xff6F6460), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )),

                SizedBox(height: 100,),

                Mybottom(onPressed: (){}, title: 'Sign Up'),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account ?',style: TextStyle(
                        fontSize: 12,fontWeight: FontWeight.w400,
                        color: Color(0xff6F6460)
                    ),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Login();
                      }));
                    },
                      child:  Text('Sign In',style: TextStyle(
                          fontSize: 12,fontWeight: FontWeight.w400,
                          color: Color(0xff6F6460)
                      ),),)
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget togglePassword(){
    return IconButton(onPressed: (){
      setState(() {
        _isSecurePassword =!_isSecurePassword;
      });
    },
        icon: _isSecurePassword ? Icon(Icons.visibility_outlined):Icon(Icons.visibility_off_outlined));
  }
}