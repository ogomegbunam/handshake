import 'package:flutter/material.dart';
import 'package:handshake/components/home_button.dart';
import 'package:handshake/constants.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              HomeButton(
                  onpressedfunction: () {Navigator.popAndPushNamed(context, "/output");},
                  label: 'Handshake for Security',
                  asset: 'assets/camera.svg'),
              SizedBox(height: 20,),
              HomeButton(
                  onpressedfunction: () {Navigator.popAndPushNamed(context, "/output");},
                  label: '      Raise alarm1',
                  asset: 'assets/notification.svg'),
              SizedBox(height: 20,),
              HomeButton(
                  onpressedfunction: () {Navigator.popAndPushNamed(context, "/output");},
                  label: '      Raise alarm2',
                  asset: 'assets/notification.svg'),
              SizedBox(height: 20,),
              HomeButton(
                  onpressedfunction: () {Navigator.popAndPushNamed(context, "/output");},
                  label: '      Update Profile',
                  asset: 'assets/profile.svg'),
              SizedBox(height: 20,),

              HomeButton(
                  onpressedfunction: () {Navigator.popAndPushNamed(context, "/output");},
                  label: '           View log',
                  asset: 'assets/document.svg'),

            ],
          ),
        ),
      ),
    );
  }
}
