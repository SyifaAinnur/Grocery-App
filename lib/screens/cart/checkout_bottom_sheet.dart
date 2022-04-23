// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_button.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/screens/order_failed_dialog.dart';

class CheckoutBottomSheet extends StatefulWidget {
  const CheckoutBottomSheet({Key? key}) : super(key: key);

  @override
  State<CheckoutBottomSheet> createState() => _CheckoutBottomSheetState();
}

class _CheckoutBottomSheetState extends State<CheckoutBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: new Wrap(
        children: [
          Row(
            children: [
              AppText(
                text: "Checkout",
                textAlign: TextAlign.center,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  size: 25,
                ),
              )
            ],
          ),
          SizedBox(height: 45),
          getDivider(),
          checkoutRow("Payment", trailingWidget: Icon(Icons.payment)),
          getDivider(),
          checkoutRow("Promo Code", trailingText: "Pick Discount"),
          getDivider(),
          checkoutRow("Total Cost", trailingText: "\$13.97"),
          getDivider(),
          SizedBox(height: 30),
          termsAndConditionsAgreement(context),
          Container(
            margin: EdgeInsets.only(
              top: 25
            ),
            child: AppButton(
              label: "Place Order",
              fontWeight: FontWeight.w600,
              padding: EdgeInsets.symmetric(
                vertical: 25
              ),
              onPressed: () {
                onPlaceOrderClicked();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget getDivider() {
    return Divider(
      thickness: 1,
      color: Color(0xFFE2E2E2),
    );
  }

  Widget checkoutRow(String label,
      {String? trailingText, Widget? trailingWidget}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          AppText(
              text: label,
              textAlign: TextAlign.start,
              fontSize: 18,
              color: Color(0xFF7C7C7C),
              fontWeight: FontWeight.w600),
          Spacer(),
          trailingText == null
              ? trailingWidget!
              : AppText(
                  text: trailingText,
                  textAlign: TextAlign.start,
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
          SizedBox(width: 20),
          Icon(Icons.arrow_forward_ios, size: 20)
        ],
      ),
    );
  }

  Widget termsAndConditionsAgreement(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'By placing your order, you agree to our ',
          style: TextStyle(
            color: Color(0xFF7C7C7C),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: Theme.of(context).textTheme.bodyText1?.fontFamily,
          ),
          children: [
            TextSpan(
                text: " Terms",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            TextSpan(text: " And"),
            TextSpan(
                text: " Conditions",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ]),
    );
  }

  void onPlaceOrderClicked() {
    Navigator.pop(context);
    showDialog(context: context, builder: (BuildContext context) {
      return OrderFailedDialogue();
    });
  }
}
