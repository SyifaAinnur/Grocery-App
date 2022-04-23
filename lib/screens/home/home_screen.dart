// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:grocery_app/models/grocery_item.dart';
import 'package:grocery_app/widgets/grocery_item_card_widget.dart';
import 'package:grocery_app/screens/home/grocery_featured_item_widget.dart';
import 'package:grocery_app/screens/home/home_banner_widget.dart';
import 'package:grocery_app/screens/product_details/product_details_screen.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/widgets/search_bar_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  SvgPicture.asset("assets/icons/app_icon_color.svg"),
                  SizedBox(
                    height: 5
                  ),
                  padded(locationWidget()),
                  SizedBox(
                    height: 15,
                  ),
                  padded(SearchBarWidget()),
                  SizedBox(
                    height: 25,
                  ),
                  padded(HomeBanner()),
                  SizedBox(
                    height: 25,
                  ),
                  padded(subTitle("Exclusive Order")),
                  getHorizontalItemSlider(exclusiveOffers),
                  SizedBox(
                    height: 15
                  ),
                  padded(subTitle("Best Selling")),
                  getHorizontalItemSlider(bestSelling),
                  SizedBox(
                    height: 15
                  ),
                  padded(subTitle("Groceries")),
                  SizedBox(
                    height: 15
                  ),
                  Container(
                    height: 105,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        GroceryFeatureCard(
                          groceryFeaturedItem: groceryFeaturedItems[0],
                          color: Color(0xFFF8A44C),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GroceryFeatureCard(groceryFeaturedItem: groceryFeaturedItems[1], color: AppColors.primaryColor,),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  getHorizontalItemSlider(groceries),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      )
      
    );
  }

  Widget padded(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: widget,
    );
  }


  Widget locationWidget() {
    String locationIconPath = "assets/icons/location_icon.svg";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          locationIconPath
        ),
        SizedBox(
          width:8
        ),
        Text(
          "Syifa, Indonesia",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }

  Widget subTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
        Spacer(),
        Text(
          "See All",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor
          ),
        )
      ],
    );
  }

  Widget getHorizontalItemSlider(List<GroceryItem> items) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 250,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onItemClicked(context, items[index]);
            },
            child: GroceryItemCardWidget(
              item: items[index]
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 20,
          );
        },
      ),
    );
  }

    void onItemClicked(BuildContext context, GroceryItem groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(groceryItem: groceryItem))
    );
  }
}