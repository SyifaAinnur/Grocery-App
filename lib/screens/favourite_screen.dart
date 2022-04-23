import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: AppText(
          text: "No Favorite Items",
          fontWeight: FontWeight.w600,
          color: Color(0xFF7C7C7C),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}