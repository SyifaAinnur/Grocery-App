// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_button.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/screens/category_items_screen.dart';

class OrderFailedDialogue extends StatelessWidget {
  const OrderFailedDialogue({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25
        ),
        height: 600.0,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 10,
            ),
            Padding(padding: const EdgeInsets.symmetric(
              horizontal: 45
            ),
            child: Image(
              image: AssetImage("assets/images/order_failed_image.png"),
            ),
            ),
            Spacer(
              flex: 5
            ),
            AppText(text: "Oops! Order Failed", textAlign: TextAlign.center, fontSize: 28, fontWeight: FontWeight.w600,),
            Spacer(
              flex: 2
            ),
            AppText(text: "Something went temply wrong", textAlign: TextAlign.center, fontSize: 16, fontWeight: FontWeight.w600,color: Color(0xff7C7C7C)),
            Spacer(
              flex: 8,
            ),
            AppButton(label: "Please Try Again",
            fontWeight: FontWeight.w600,
            onPressed: () {
                // Navigator.of(context).pushReplacement(new MaterialPageRoute(
                //   builder: (BuildContext context) {
                //     return OrderAcceptedScreen();
                //   },
                // ));
            }),
            Spacer(
              flex: 4,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: AppText(
                text: "Back To Home",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(
              flex: 4
            )
          ],
        ),
      ),
    );
  }
}