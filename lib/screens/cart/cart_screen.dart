// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_button.dart';
import 'package:grocery_app/models/grocery_item.dart';
import 'package:grocery_app/helpers/column_with_seprator.dart';
import 'package:grocery_app/screens/cart/checkout_bottom_sheet.dart';
import 'package:grocery_app/widgets/cart_item_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text("My Cart",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20,
            ),
            Column(
              children: getChildrenWithSeperator(
                  addToLastChild: false,
                  widgets: demoItems.map((e) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      width: double.maxFinite,
                      child: CartItemWidget(
                        item: e,
                      ),
                    );
                  }).toList(),
                  seperator: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(
                      thickness: 1,
                    ),
                  )),
            ),
            Divider(
              thickness: 1,
            ),
            getCheckoutButton(context),
          ],
        ),
      )),
    );
  }

  Widget getCheckoutButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: AppButton(label: "Go to Check Out",
      fontWeight: FontWeight.w600,
      padding: EdgeInsets.symmetric(vertical: 30), 
      trailingWidget: getButtonPriceWidget(),
      onPressed: () {
        showBottomSheet(context);
      }),
    );
  }

  Widget getButtonPriceWidget() {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Color(0xff489e67),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        "\$12.96",
        style: TextStyle(fontWeight: FontWeight.w600,
      ),
      )
    );
  }

    void showBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext bc) {
          return CheckoutBottomSheet();
        });
  }


}
