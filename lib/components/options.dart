import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handshake/constants.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  bool _checkbox = false;
  bool _nocheckbox = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _checkbox = !_checkbox;
             // _nocheckbox = !_checkbox;
            });
          },
          child: Container(
            width: 150,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    width: 2, color: (_checkbox ? kblue : inputColor))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(_checkbox
                      ? Icons.radio_button_checked_outlined
                      : Icons.radio_button_off,color: _checkbox ? kblue : inputColor,)
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _nocheckbox = !_nocheckbox;
             // _checkbox = !_checkbox;

            });
          },
          child: Container(
            width: 150,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    width: 2, color: (_nocheckbox ? inputColor : kblue))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(_nocheckbox
                      ? Icons.radio_button_off
                      : Icons.radio_button_checked_outlined,color: _nocheckbox ? inputColor:kblue,)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
