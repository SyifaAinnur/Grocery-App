import 'package:flutter/material.dart';
import 'package:grocery_app/screens/splash_screen.dart';
import 'package:grocery_app/styles/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: SplashScreen(),
    );
  }
}