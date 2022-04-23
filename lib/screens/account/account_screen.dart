import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/helpers/column_with_seprator.dart';
import 'package:grocery_app/styles/colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: SizedBox(
                  width: 65,
                  height: 65,
                  child: getImageHeader(),
                ),
                title: AppText(text: "Syifa Ain'nur", textAlign: TextAlign.start,
                fontSize: 18, 
                fontWeight: FontWeight.bold,
                ),
                subtitle: AppText(text: "github.com/SyifaAinnur", textAlign: TextAlign.start,
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: Color(0xff7c7c7c),
                ),
              ),
              Column(
                children: getChildrenWithSeperator(widgets: accountItems.map((e) {
                  return getAccountItemWidget(e);
                }), seperator: seperator),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getImageHeader() {
    String imagePath = "assets/images/foto_account.jpg";
    return CircleAvatar(
      radius: 5.0,
      backgroundImage: AssetImage(imagePath),
      backgroundColor: AppColors.primaryColor.withOpacity(0.7),
    );
  }

  Widget getAccountItemWidger(AccountItem accountItem) {
    return Container(
      
    );
  }
}