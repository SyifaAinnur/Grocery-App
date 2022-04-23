import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_button.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        bottom: false,
        child: Stack(
          children: [
            ListView(
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset('assets/images/location.png'),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Select Your Location',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Swithch on your location to stay in tune with \n what’s happening in your area',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w100),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Your Zone',
                              hintText: "Pati",
                              suffixIcon: Icon(Icons.keyboard_arrow_down)),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Your Area',
                              hintText: "Jawa Tengah",
                              suffixIcon: Icon(Icons.keyboard_arrow_down)),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AppButton(
                        label: "Submit",
                        onPressed: () {

                        }),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
