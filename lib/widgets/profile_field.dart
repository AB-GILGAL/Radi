import 'package:flutter/material.dart';

Widget profileFieldText({required double heightSize}) {
  return SizedBox(
    height: heightSize,
    child: TextField(
        enabled: false,
        readOnly: true,
        decoration: InputDecoration(
          disabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.circular(10)),
        )),
  );
}
