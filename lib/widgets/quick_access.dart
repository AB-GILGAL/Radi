import 'package:flutter/material.dart';

Widget quickAccess(
    {required String accessName,
    required double contHeight,
    required double contWidth,
    required double iconsSize,
    required double sizeHeight,
    required double fontsize,
    required Icon accessIcon,
    required VoidCallback accessFunc}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: accessFunc,
        child: Container(
          height: contHeight,
          width: contWidth,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5)),
              ],
              shape: BoxShape.circle),
          child: Icon(
            accessIcon.icon,
            size: iconsSize,
          ),
        ),
      ),
      SizedBox(
        height: sizeHeight,
      ),
      Text(
        accessName,
        style: TextStyle(fontSize: fontsize),
      )
    ],
  );
}
