import 'package:flutter/material.dart';
import 'package:handshake/components/reusable_button.dart';

import '../constants.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        backgroundColor: kwhite,
        title: const Text(
          'OTP Verification',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: kblack),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.keyboard_arrow_left,
            color: kblack,
            size: 30,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 33,
              ),
              Center(
                child: Container(
                    width: 135,
                    height: 18,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/anti.png"),
                          fit: BoxFit.fill),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Row(
                children: [
                  Text(
                    'Enter the verification code sent to ',
                    style: ksubheading,
                  ),
                  Text('+2349033175299', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: kblack),)
                ],
              )),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'What\'s my number?',
                style: kblkheading,
              ),
              SizedBox(
                height: 50,
              ),
              OtherButton(onpressedfunction: () {}, label: 'Verify'),
              SizedBox(height: 40,),
              Center(
                  child: Row(
                    children: [
                      Center(
                        child: Text(
                          'Didn\'t receive code? ',
                          style: ksubheading,
                        ),
                      ),
                      Text('Resend', style: kblkheading)
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
