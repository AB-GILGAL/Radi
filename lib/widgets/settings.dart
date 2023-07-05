import 'package:flutter/material.dart';

Widget settingsSelect(
    {required double fontSize,
    required double iconSize,
    required Icon icon,
    required String title}) {
  return ListTile(
    leading: icon,
    iconColor: Colors.black,
    title: Text(
      title,
      style: TextStyle(fontSize: fontSize),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios_rounded,
      size: iconSize,
      color: Colors.black,
    ),
  );
}
