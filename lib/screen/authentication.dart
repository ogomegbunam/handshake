import 'package:flutter/material.dart';
import 'package:handshake/components/form_input.dart';
import 'package:handshake/components/reusable_button.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:country_code_picker/country_code_picker.dart';

import '../constants.dart';

class Authentication extends StatelessWidget {
  Authentication({Key? key}) : super(key: key);
  TextEditingController loginController = TextEditingController();

  void _onCountryChange(CountryCode countryCode) {
    print("country code " + countryCode.toString());
  }

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
                height: 50,
              ),
              // FormInput(
              //   'Country',
              //   loginController,
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // FormInput(
              //   'Phone number',
              //   loginController,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Country",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: inputColor),
                    child: CountryCodePicker(
                      showDropDownButton: true,

                      backgroundColor: kwhite,
                      flagWidth: 20,
                      boxDecoration: BoxDecoration(),
                      onChanged: _onCountryChange,
                      initialSelection: 'NG',
                      favorite: ['+234', 'NG'],
                      // optional. Shows only country name and flag
                      showCountryOnly: true,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: true,
                      showFlag: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: true,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Phone number",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: inputColor),
                    child: Row(
                      children: [
                        CountryCodePicker(

                          showDropDownButton: true,
                          flagWidth: 20,
                          flagDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          onChanged: _onCountryChange,
                          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                          initialSelection: 'NG',
                          favorite: ['+234', 'NG'],
                          // optional. Shows only country name and flag
                          showCountryOnly: false,
                          // optional. Shows only country name and flag when popup is closed.
                          showOnlyCountryWhenClosed: false,
                          // optional. aligns the flag and the Text left
                          alignLeft: false,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: TextFormField(
                            cursorColor: kblack,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 50,
              ),
              OtherButton(
                  onpressedfunction: () {
                    Navigator.popAndPushNamed(context, "/otp");
                  },
                  label: 'Continue')
            ],
          ),
        ),
      ),
    );
  }
}
