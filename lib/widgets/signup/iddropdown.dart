import 'package:flutter/material.dart';

Widget dropDownId(
    {required double textSize,
    required double paddingSize,
    required double widthSize,
    required double dropTextSize,
    required String trustYesOrNoText,
    required ValueChanged? onChanged}) {
  final List<String> title = ["Passport", "Ghana Card"];

  String? selectedTitle;
  return DropdownButtonFormField(
    decoration: InputDecoration(
      hintText: trustYesOrNoText,
      contentPadding: EdgeInsets.all(paddingSize),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: widthSize),
          borderRadius: BorderRadius.circular(10)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: widthSize),
          borderRadius: BorderRadius.circular(10)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: widthSize),
          borderRadius: BorderRadius.circular(10)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color.fromARGB(255, 30, 0, 82), width: widthSize),
          borderRadius: BorderRadius.circular(10)),
    ),
    items: title
        .map((e) => DropdownMenuItem(
            value: e,
            child: Text(
              e,
              style: TextStyle(fontSize: dropTextSize),
            )))
        .toList(),
    onChanged: onChanged,
    value: selectedTitle,
    validator: (value) {
      if (value == null) {
        return "Select Id type";
      }
      return null;
    },
  );
}
