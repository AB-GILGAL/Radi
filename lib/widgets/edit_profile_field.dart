import 'package:flutter/material.dart';

Widget editFieldText() {
  return TextField(
      decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 1.5),
        borderRadius: BorderRadius.circular(10)),
  ));
}
