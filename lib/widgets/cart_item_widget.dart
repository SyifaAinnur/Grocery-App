import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/models/grocery_item.dart';
import 'package:grocery_app/styles/colors.dart';

import 'item_counter_widget.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({Key? key, required this.item}) : super(key: key);
  final GroceryItem item;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  final double height = 110;

  final Color borderColor = Color(0xffE2E2E2);

  final double borderRadius = 18;

  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(vertical: 30),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            imageWidget(),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              AppText(
                text: widget.item.name,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
              AppText(
                  text: widget.item.description,
                  fontSize: 14,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkGrey),
              SizedBox(
                height: 12,
              ),
              Spacer(),
              ItemCounterWidget(
                onAmountChanged: (newAmount) {
                  setState(() {
                    amount = newAmount;
                  });
                },
              )
            ]
            ),
            Column(
              children: [
                Icon(
                  Icons.close,
                  color: AppColors.darkGrey,
                  size: 25
                ),
                Spacer(
                  flex: 5,
                ),
                Container(
                  width: 70,
                  child: AppText(text: "\$${getPrice().toStringAsFixed(2)}", textAlign: TextAlign.right, fontSize: 18, fontWeight: FontWeight.bold,),
                ),
                Spacer()
              ],
            )
          ],
        ),
        
      ),
    );
  }

  Widget imageWidget() {
    return Container(
      width: 100,
      child: Image.asset(widget.item.imagePath),
    );
  }

  double getPrice() {
    return widget.item.price * amount;
  }
}
