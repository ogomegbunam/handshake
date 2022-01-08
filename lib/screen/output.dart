import 'package:flutter/material.dart';
import 'package:handshake/components/options.dart';
import 'package:handshake/components/profile_display.dart';
import 'package:handshake/components/reusable_button.dart';
import 'package:handshake/constants.dart';
class Output extends StatelessWidget {
  const Output({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                 CircleAvatar(
                  backgroundImage:
                  AssetImage("assets/ogom.png"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                ),

                SizedBox(
                  height: 20,
                ),
                ProfileDisplay(
                  label: "Full Name",
                  message: 'Okorie Christian',
                ),
                ProfileDisplay(
                    label: "Email Address", message: ' okoriechristian001@gmail.com'),
                ProfileDisplay(
                  label: "Phone Number",
                  message: '+2349033175299',
                ),
                ProfileDisplay(
                  label: "Next of Kin\'s Whatsapp Number 1",
                  message: '123457098',
                ),
                ProfileDisplay(
                  label: "Next of Kin\'s Whatsapp Number 2",
                  message: '1243579099',
                ),
                ProfileDisplay(
                  label: "Do you have Business?",
                  message: 'YES',
                ),
                ProfileDisplay(
                    label: "Business Address",
                    message: 'East London',),
                ProfileDisplay(
                  label: "Do you use your vehicle for Transportation",
                  message: 'YES',
                ),
                ProfileDisplay(
                  label: "Vehicle\'s Plate Number",
                  message: 'KL-35-J-4169',
                ),
                SizedBox(height: 20,),
                Text('Are you sure you want to confirm this handshake?',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: kblue,
                ),),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Options(),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OtherButton(onpressedfunction: (){
                    Navigator.popAndPushNamed(context, "/success");

                  }, label: 'Confirm'),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
