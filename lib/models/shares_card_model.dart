import 'package:flutter/material.dart';

class CardShares {
  Image image;
  String comName;
  double yearLow;
  double yearHigh;
  double openingPrice;
  double closingPrice;
  String shareCode;

  CardShares(
      {required this.image,
      required this.comName,
      required this.shareCode,
      required this.yearLow,
      required this.yearHigh,
      required this.openingPrice,
      required this.closingPrice});

  List<Object?> get props => [image, comName, yearLow, yearHigh];
  static List<CardShares> cardShares = [
    CardShares(
        image: Image.asset("assets/images/mtn.jpg"),
        comName: "Scancom PLC",
        shareCode: "MTNGH",
        yearLow: 0.88,
        yearHigh: 1.11,
        openingPrice: 0.08,
        closingPrice: 0.08),
    CardShares(
        image: Image.asset("assets/images/guiness.jpg"),
        comName: "Guiness",
        shareCode: "GGBL",
        yearLow: 2.05,
        yearHigh: 2.22,
        openingPrice: 2.05,
        closingPrice: 2.05),
    CardShares(
        image: Image.asset("assets/images/tullow.png"),
        comName: "Tullow",
        shareCode: "TLW",
        yearLow: 11.92,
        yearHigh: 11.92,
        openingPrice: 11.92,
        closingPrice: 11.92),
    CardShares(
        image: Image.asset("assets/images/samba.png"),
        comName: "Samba",
        shareCode: "SAMBA ",
        yearLow: 0.55,
        yearHigh: 0.55,
        openingPrice: 0.55,
        closingPrice: 0.55),
    CardShares(
        image: Image.asset("assets/images/fanmilk.png"),
        comName: "Fanmilk",
        shareCode: "FML",
        yearLow: 3.00,
        yearHigh: 4.00,
        openingPrice: 3.00,
        closingPrice: 3.00),
  ];
}
