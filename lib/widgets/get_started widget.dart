// ignore_for_file: file_names

import 'package:flutter/widgets.dart';

Widget textOne({required String textName, required int fontTextSize}) {
  return Text(
    textName,
    style: TextStyle(
        color: const Color.fromARGB(255, 30, 0, 82),
        fontSize: fontTextSize.toDouble()),
  );
}
