import 'package:flutter/material.dart';

Widget createCard(
    {required Image image,
    required String companyName,
    required String yearLow,
    required String yearHigh}) {
  return Container(
    height: 140,
    width: 120,
    decoration: const BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(blurRadius: 2, spreadRadius: 1, color: Colors.grey),
    ]),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(image: DecorationImage(image: image.image))),
          Text(
            companyName,
            style: const TextStyle(fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Year Low"),
              Text(yearLow),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [const Text("Year High"), Text(yearHigh)],
          ),
        ],
      ),
    ),
  );
}
