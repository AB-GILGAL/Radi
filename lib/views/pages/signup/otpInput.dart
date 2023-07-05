// ignore_for_file: file_names

import 'package:flutter/material.dart';

class OTPInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OTPInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 14.06,
      width: MediaQuery.of(context).size.height / 16.88,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height / 42.2)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
