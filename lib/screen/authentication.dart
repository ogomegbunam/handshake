import 'package:flutter/material.dart';
import 'package:handshake/components/form_input.dart';
import 'package:handshake/components/reusable_button.dart';

import '../constants.dart';

class Authentication extends StatelessWidget {
  Authentication({Key? key}) : super(key: key);
  TextEditingController loginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        backgroundColor: kwhite,
        title: const Text(
          'Enter your number',
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
                  child: Text(
                'Anti-kidnap will need to verify your number',
                style: ksubheading,
              )),
              SizedBox(
                height: 25,
              ),
              FormInput(
                'Country',
                loginController,
              ),
              SizedBox(
                height: 15,
              ),
              FormInput(
                'Phone number',
                loginController,
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
              OtherButton(onpressedfunction: () {Navigator.popAndPushNamed(context, "/otp");}, label: 'Continue')
            ],
          ),
        ),
      ),
    );
  }
}
