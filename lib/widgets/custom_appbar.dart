import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({required String title}) {
  return AppBar(
      centerTitle: true,
      title: Text(title),
      foregroundColor: Colors.black,
      backgroundColor: Colors.grey[50]);
}
