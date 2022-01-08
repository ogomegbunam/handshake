import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:handshake/components/form_input.dart';
import 'package:handshake/components/options.dart';
import 'package:handshake/components/reusable_button.dart';
import 'package:image_picker/image_picker.dart';
import '../constants.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  _CompleteProfileState createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  File? photo;
  String file = '';
  Future pickImage(ImageSource source) async {
    try {
      final photo = await ImagePicker().pickImage(source: source);
      if (photo == null) return;
      final imageTemporary = File(photo.path);
      setState(() {
        this.photo = imageTemporary;
        file = photo.path;
        print(file);
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }


  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController nextOfK1Controller = TextEditingController();
  TextEditingController nextOfK2Controller = TextEditingController();
  TextEditingController businessNameController = TextEditingController();
  TextEditingController businessAddressController = TextEditingController();
  TextEditingController vehicleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        backgroundColor: kwhite,
        title: const Text(
          'Create a profile',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: kblack),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, "/otp");
          },
          child: const Icon(
            Icons.keyboard_arrow_left,
            color: kblack,
            size: 30,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 46,
                      backgroundColor: kblue,
                      child: CircleAvatar(
                        backgroundColor: kblue,
                        backgroundImage: photo != null
                            ? FileImage(
                                photo!,
                              )
                            : const AssetImage(
                                'assets/Camera.png',
                              ) as ImageProvider,
                        radius: 45,
                      ),
                    ),
                    onTap: () {
                      pickImage(ImageSource.camera);
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Allow camera permission to capture your face directly',
                    style: ksubheading,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FormInput('Full Name', fullNameController),
                  FormInput('Email Address', emailAddressController),
                  FormInput('Phone Number', phoneNumberController),
                  FormInput(
                      'Next of Kin\'s Whatsapp Number 1', nextOfK1Controller),
                  FormInput(
                      'Next of Kin\'s Whatsapp Number 2', nextOfK2Controller),
                  Text('Do you have a business?',style: ksubheading,),
                  SizedBox(height: 10,),
                  Options(),
                  SizedBox(height: 10,),
                  FormInput('Business Name', businessNameController),
                  FormInput('Business Address', businessAddressController),
                  Text('Do you use your vehicle for Transportation?',style: ksubheading,),
                  SizedBox(height: 10,),
                  Options(),
                  SizedBox(height: 10,),

                  FormInput('', vehicleController),
                  SizedBox(height: 40,),
                  OtherButton(onpressedfunction: () {
                    Navigator.popAndPushNamed(context, "/home");
                  }, label: 'Register'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
