import 'package:flutter/material.dart';

Widget investmentHorizon({required ValueChanged? onChanged}) {
  final List<String> title = ["Short Term", "Medium Term", "Long Term"];

  String? selectedTitle;
  return DropdownButtonFormField(
    decoration: InputDecoration(
      hintText: "Select",
      contentPadding: const EdgeInsets.all(15),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
          borderRadius: BorderRadius.circular(10)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
          borderRadius: BorderRadius.circular(10)),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 1.5),
          borderRadius: BorderRadius.circular(10)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 30, 0, 82), width: 1.2),
          borderRadius: BorderRadius.circular(10)),
    ),
    items: title
        .map((e) => DropdownMenuItem(
            value: e,
            child: Text(
              e,
              style: const TextStyle(fontSize: 18),
            )))
        .toList(),
    onChanged: onChanged,
    value: selectedTitle,
    validator: (value) {
      if (value == null) {
        return "Select Investment Horizon";
      }
      return null;
    },
  );
}
