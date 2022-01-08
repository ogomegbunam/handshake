import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handshake/components/reusable_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../constants.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
            Navigator.popAndPushNamed(context, "/auth");;
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
            PinCodeTextField(
              appContext: context,
              pastedTextStyle: TextStyle(
                color: inputColor,
                fontWeight: FontWeight.bold,
              ),
              length: 5,
              obscureText: true,
              obscuringCharacter: '*',

              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              validator: (v) {
                if (v!.length < 4) {
                  return "I'm from validator";
                } else {
                  return null;
                }
              },
              enablePinAutofill: true,

              pinTheme: PinTheme(
                inactiveColor: inputColor,
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(50),
                selectedFillColor: inputColor,
                errorBorderColor: inputColor,
                fieldHeight: 50,
                fieldWidth: 50,
                activeFillColor:inputColor,
                inactiveFillColor: inputColor,
                activeColor: inputColor,
                disabledColor: inputColor,
              ),
              cursorColor: Colors.black,
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,

             // errorAnimationController: errorController,
              //controller: textEditingController,
              keyboardType: TextInputType.number,
              boxShadows: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black12,
                  blurRadius: 10,
                )
              ],
              onCompleted: (v) {
                print("Completed");
              },
              // onTap: () {
              //   print("Pressed");
              // },
              onChanged: (value) {
                print(value);
                setState(() {
                 // currentText = value;
                });
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),


              SizedBox(
                height: 50,
              ),
              OtherButton(onpressedfunction: () {
                Navigator.popAndPushNamed(context, "/completeprofile");
              }, label: 'Verify'),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Didn\'t receive code? ',
                      style: ksubheading,
                    ),
                  ),
                  Text('Resend', style: kblkheading)
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
