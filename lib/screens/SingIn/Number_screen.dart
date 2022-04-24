import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/screens/SingIn/Verification_screen.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                        colors: [
                      Color(0xff94CAA6),
                      Color(0xffF5F4ED),
                    ])),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/images/Mask_Group.png',
                  ),
                )),
            ListView(
              children: [
                SizedBox(
                  height: 230,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Full Name', hintText: "syifa A.M"),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Email', hintText: "Enter your email"),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                              labelText: 'Password', hintText: "Enter password"
                              
                              ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: IntlPhoneField(
                          decoration:
                              InputDecoration(labelText: 'Mobile Number'),
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                          onCountryChanged: (country) {
                            print('Country code changed to: ' + country.name);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: FloatingActionButton(
                          backgroundColor: Color(0xff53B175),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        VerifiacationScreen()));
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
