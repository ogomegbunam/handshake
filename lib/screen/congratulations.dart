import 'package:flutter/material.dart';
import 'package:handshake/components/app_style.dart';
import 'package:handshake/components/reusable_button.dart';
import 'package:handshake/constants.dart';

class CustomDailog extends StatefulWidget {
  const CustomDailog({Key? key}) : super(key: key);

  @override
  _CustomDailogState createState() => _CustomDailogState();
}

class _CustomDailogState extends State<CustomDailog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.verified, color: Colors.green, size: 100),
              SizedBox(height: 25),
              Text("Congratulations!", style: AppStyle.boldText),
              SizedBox(height: 10),
              Text("You have successfuly confirm this handshake",
                  style: AppStyle.faintText),
              SizedBox(height: 30),
              OtherButton(onpressedfunction: () {}, label: 'Continue')
            ],
          ),
        ),
      ),
    );
  }
}
