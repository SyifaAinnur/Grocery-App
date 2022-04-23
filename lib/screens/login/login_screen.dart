// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/banner_background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}