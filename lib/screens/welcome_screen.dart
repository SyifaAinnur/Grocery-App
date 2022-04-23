// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grocery_app/common_widgets/app_button.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/screens/dashboard/dashboard_screen.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  final String imagePath = "assets/images/welcome_image.png";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(),
              icon(),
              SizedBox(height: 20),
              welcomeTextWidget(),
              SizedBox(height: 10),
              sloganText(),
              SizedBox(height: 30),
              getButton(context),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget icon() {
    String iconPath = "assets/icons/app_icon.svg";
    return SvgPicture.asset(
      iconPath,
      width: 48,
      height: 56,
    );
  }

  Widget welcomeTextWidget() {
    return Column(
      children: [
        AppText(
          text: "Welcome to",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          textAlign: TextAlign.center,
        ), 
        AppText(
          text: "Grocery App",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget sloganText() {
    return AppText(
      text: "Get your grecories as fast as in hour",
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xffFCFCFC).withOpacity(0.7),
      textAlign: TextAlign.center,
    );
  }

  Widget getButton(BuildContext context) {
    return AppButton(
      label: "Get Started",
      fontWeight: FontWeight.w600,
      padding: EdgeInsets.symmetric(vertical: 25),
      onPressed: () {
        onGetStartedClicked(context);
      },
    );
  }

  void onGetStartedClicked(BuildContext context) {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
      builder: (BuildContext context) {
        return DashboardScreen();
      },
    ));
  }
}
