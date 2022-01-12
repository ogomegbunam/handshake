import 'package:flutter/material.dart';
import 'package:handshake/constants.dart';


class FormInput extends StatelessWidget {
  String label;
  TextEditingController controller;



  FormInput(this.label, this.controller, );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${label}",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black87,
                fontSize: 12),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            cursorColor: kblack,
            controller: controller,
            keyboardType: label == "Email"
                ? TextInputType.emailAddress
                : label == "Phone Number"
                ? TextInputType.phone
                : TextInputType.text,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              fillColor: inputColor,
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none)),
            ),

          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
