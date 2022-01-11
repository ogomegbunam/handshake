import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:handshake/constants.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 7), () {
      Navigator.popAndPushNamed(context, "/auth");
      // Navigator.of(context)
      //     .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                  width: 279,
                  height: 279,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logon.png"),
                        fit: BoxFit.fill),
                  )),
            ),

          ],
        ),
      ),
    );
    // return Scaffold(
    //   backgroundColor: primaryColor,
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         // logo here
    //         Image.asset(
    //           'assets/onboard/Shapes-Overlay.png',
    //           height: 120,
    //         ),
    //         SizedBox(
    //           height: 20,
    //         ),
    //         CircularProgressIndicator(
    //           valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}


