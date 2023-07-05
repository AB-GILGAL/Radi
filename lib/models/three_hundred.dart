import 'package:flutter/material.dart';

class TreasuryBill364 {
  Image image;
  String comName;
  double yearLow;
  double yearHigh;
  String maturityDate;

  TreasuryBill364({
    required this.image,
    required this.comName,
    required this.maturityDate,
    required this.yearLow,
    required this.yearHigh,
  });

  List<Object?> get props => [image, comName, yearLow, yearHigh];
  static List<TreasuryBill364> treasuryBill364 = [
    TreasuryBill364(
      image: Image.asset("assets/images/364.jpg"),
      comName: "364-DAY BILL",
      maturityDate: "12/12/22",
      yearLow: 83.9039,
      yearHigh: 100.0000,
    ),
    TreasuryBill364(
      image: Image.asset("assets/images/364.jpg"),
      comName: "364-DAY BILL",
      maturityDate: "19/12/22",
      yearLow: 84.6827,
      yearHigh: 100.0000,
    ),
    TreasuryBill364(
      image: Image.asset("assets/images/364.jpg"),
      comName: "364-DAY BILL",
      maturityDate: "02/01/23",
      yearLow: 84.6024,
      yearHigh: 100.0000,
    ),
    TreasuryBill364(
      image: Image.asset("assets/images/364.jpg"),
      comName: "364-DAY BILL",
      maturityDate: "30/01/23",
      yearLow: 81.6529,
      yearHigh: 100.0000,
    ),
    TreasuryBill364(
      image: Image.asset("assets/images/364.jpg"),
      comName: "364-DAY BILL",
      maturityDate: "13/02/23",
      yearLow: 81.5746,
      yearHigh: 101.8312,
    ),
  ];
}
