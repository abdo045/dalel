// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:suconboarding/Screenlogin/createaccount.dart';
import 'package:suconboarding/screenpage/home.dart';
import 'package:suconboarding/widget/bottom.dart';
import 'package:suconboarding/widget/dark-light.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String email;
  late String password;

  bool _isSecurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child:SingleChildScrollView(
          child: Column(
            children: [

              Stack(
                children: [
                  Image.asset('assets/images/login.png'),
                  SizedBox(height: 100,),

                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Center(child: Text('Dalel',style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Pacifico'
                    ),)),
                  )
                ],
              ),
              SizedBox(height: 40,),
              Text('Welcome Back !',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff333333)
              ),),
              SizedBox(height: 60,),

              Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30),
                child: TextFormField(

                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your Email',
                      labelText: 'email',
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff6F6460), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff6F6460), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )),
              ),
              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30),
                child:  TextFormField(
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
              ),

              SizedBox(height: 10,),

              Row(
                children: [
                  SizedBox(width: 220,),
                  TextButton(onPressed: (){
                  },
                    child:   Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Color(0xff6F6460),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600
                      ),
                      textAlign: TextAlign.end,
                    ),)
                ],
              ),
              SizedBox(height: 50,),


              Mybottom(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Home();
                }));
              }, title: 'Sign In'),
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
                      return Create();
                    }));
                  },
                    child:  Text('Sign Up',style: TextStyle(
                      fontSize: 12,fontWeight: FontWeight.w400,
                      color: Color(0xff6F6460)
                  ),),)
                ],
              )


            ],
          ),
        )
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
