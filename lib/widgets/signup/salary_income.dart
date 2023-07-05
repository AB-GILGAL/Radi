import 'package:flutter/material.dart';

Widget salaryIncome({required ValueChanged? onChanged}) {
  final List<String> title = [
    "Below GH₵1,000",
    "GH₵1,000 - 5,000",
    "GH₵5,000 - 10,000",
    "Above GH₵10,000",
  ];

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
        return "Select Monthly income";
      }
      return null;
    },
  );
}
