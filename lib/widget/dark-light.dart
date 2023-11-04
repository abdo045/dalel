import 'package:flutter/material.dart';

class Dark_Light extends StatefulWidget {
  const Dark_Light({super.key});

  @override
  State<Dark_Light> createState() => _Dark_LightState();
}
bool _iconBool =false;
IconData _iconLight =Icons.wb_sunny;
IconData _iconDark =Icons.nights_stay;
ThemeData _lightTheme =ThemeData(
  brightness: Brightness.light,
);

ThemeData _darkTheme =ThemeData(
  brightness: Brightness.dark,
);

class _Dark_LightState extends State<Dark_Light> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IconButton(onPressed: (){
        setState(() {
          _iconBool =!_iconBool;
        });
      },
      icon: Icon(_iconBool? _iconDark:_iconLight),
      ),
    );
  }
}
