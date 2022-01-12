import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handshake/components/home_button.dart';
import 'package:handshake/constants.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/home.png"),
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              fit: BoxFit.fill),
          color: Colors.black,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeButton(
                    onpressedfunction: () {
                      Navigator.popAndPushNamed(context, "/output");
                    },
                    label: 'Handshake for Security',
                    asset: 'assets/camera.svg'),
                SizedBox(
                  height: 20,
                ),
                HomeButton(
                    onpressedfunction: () {
                      Navigator.popAndPushNamed(context, "/output");
                    },
                    label: '      Raise alarm1',
                    asset: 'assets/notification.svg'),
                SizedBox(
                  height: 20,
                ),
                HomeButton(
                    onpressedfunction: () {
                      Navigator.popAndPushNamed(context, "/output");
                    },
                    label: '      Raise alarm2',
                    asset: 'assets/notification.svg'),
                SizedBox(
                  height: 20,
                ),
                HomeButton(
                    onpressedfunction: () {
                      Navigator.popAndPushNamed(context, "/output");
                    },
                    label: '      Update Profile',
                    asset: 'assets/profile.svg'),
                SizedBox(
                  height: 20,
                ),
                HomeButton(
                    onpressedfunction: () {
                      Navigator.popAndPushNamed(context, "/output");
                    },
                    label: '    Handshake History ',
                    asset: 'assets/document.svg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
