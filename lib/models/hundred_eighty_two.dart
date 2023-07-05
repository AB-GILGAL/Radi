import 'package:flutter/material.dart';

class TreasuryBill182 {
  Image image;
  String comName;
  double yearLow;
  double yearHigh;
  String maturityDate;

  TreasuryBill182({
    required this.image,
    required this.comName,
    required this.maturityDate,
    required this.yearLow,
    required this.yearHigh,
  });

  List<Object?> get props => [image, comName, yearLow, yearHigh];
  static List<TreasuryBill182> treasuryBill182 = [
    TreasuryBill182(
      image: Image.asset("assets/images/182.jpg"),
      comName: "182-DAY BILL",
      maturityDate: "12/12/22",
      yearLow: 79.7075,
      yearHigh: 100.0000,
    ),
    TreasuryBill182(
      image: Image.asset("assets/images/182.jpg"),
      comName: "182-DAY BILL",
      maturityDate: "19/12/22",
      yearLow: 86.6487,
      yearHigh: 100.0000,
    ),
    TreasuryBill182(
      image: Image.asset("assets/images/182.jpg"),
      comName: "182-DAY BILL",
      maturityDate: "26/12/22",
      yearLow: 67.5130,
      yearHigh: 100.0000,
    ),
    TreasuryBill182(
      image: Image.asset("assets/images/182.jpg"),
      comName: "182-DAY BILL",
      maturityDate: "09/01/23",
      yearLow: 87.8576,
      yearHigh: 100.0000,
    ),
    TreasuryBill182(
      image: Image.asset("assets/images/182.jpg"),
      comName: "182-DAY BILL",
      maturityDate: "09/01/23",
      yearLow: 87.6305,
      yearHigh: 101.8312,
    ),
  ];
}
