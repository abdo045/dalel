// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: const Color(0xffF8F4F9),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.menu,size: 28, color: Color(0xff6B4B3E),)),
                  const Text('Dalel',style: TextStyle( color: Color(0xff6B4B3E),fontSize: 22,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Pacifico'
                  ),),
                ],
              ),
              const SizedBox(height: 20,),
              const Text('Historical Periods',
                style: TextStyle(
                    color: Color(0xff6B4B3E),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white60),

                          color: Colors.white

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [const Text('Ancint \n Egypt',
                          style: TextStyle( color: Color(0xff6B4B3E),
                              fontSize: 16,
                              fontWeight: FontWeight.w500

                          ),),
                          const SizedBox(width: 5,),
                          Image.asset('assets/images/Frame.png')
                        ],
                      ),

                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white60),

                          color: Colors.white

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [const Text('Islamic \n Era',
                          style: TextStyle( color: Color(0xff6B4B3E),
                              fontSize: 16,
                              fontWeight: FontWeight.w500

                          ),),
                          const SizedBox(width: 5,),
                          Image.asset('assets/images/Frame 27.png')
                        ],
                      ),

                    ),
                  ),

                ],
              ),
              const SizedBox(height: 30,),
              const Text('Historical Characters',
                  style: TextStyle(
                      color: Color(0xff6B4B3E),
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white60)),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage('assets/images/David.png',)),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white60),                    ),

                        ),
                        const Text('Lionheart',
                          style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6B4B3E)
                          ) ,),
                      ],
                    ),
                  )),
                  const SizedBox(width: 5,),
                  Expanded(child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white60)),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage('assets/images/David.png',)),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white60),                    ),

                        ),
                        const Text('Lionheart',
                          style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6B4B3E)
                          ) ,),
                      ],
                    ),
                  )),
                  const SizedBox(width: 5,),
                  Expanded(child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white60)),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage('assets/images/David.png',)),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white60),                    ),

                        ),
                        const Text('Lionheart',
                          style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6B4B3E)
                          ) ,),
                      ],
                    ),
                  )),
                  const SizedBox(width: 5,),
                  Expanded(child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white60)),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage('assets/images/David.png',)),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white60),                    ),

                        ),
                        const Text('Lionheart',
                          style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6B4B3E)
                          ) ,),
                      ],
                    ),
                  )),
                ],
              ),
              const SizedBox(height: 20,),
              const Text('Historical Souvenirs',
                  style: TextStyle(
                      color: Color(0xff6B4B3E),
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white60)),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage('assets/images/David.png',)),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white60),                    ),

                        ),
                        const Text('Lionheart',
                          style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6B4B3E)
                          ) ,),
                      ],
                    ),
                  )),
                  const SizedBox(width: 5,),
                  Expanded(child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white60)),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage('assets/images/David.png',)),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white60),                    ),

                        ),
                        const Text('Lionheart',
                          style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6B4B3E)
                          ) ,),
                      ],
                    ),
                  )),
                  const SizedBox(width: 5,),
                  Expanded(child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white60)),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage('assets/images/David.png',)),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white60),                    ),

                        ),
                        const Text('Lionheart',
                          style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6B4B3E)
                          ) ,),
                      ],
                    ),
                  )),
                  const SizedBox(width: 5,),
                  Expanded(child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white60)),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage('assets/images/David.png',)),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white60),                    ),

                        ),
                        const Text('Lionheart',
                          style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6B4B3E)
                          ) ,),
                      ],
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xffC49E85),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              gap: 8,
              activeColor: Color(0xff9B6C59),
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Color(0xffC49E85),
              color: Color(0xff9B6C59),
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                ),
                GButton(
                  icon: Icons.shopping_cart_outlined,
                ),
                GButton(
                  icon: Icons.search,
                ),
                GButton(
                  icon: Icons.person_outline_sharp,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}