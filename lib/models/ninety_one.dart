import 'package:flutter/material.dart';

class TreasuryBill91 {
  Image image;
  String comName;
  double yearLow;
  double yearHigh;
  String maturityDate;

  TreasuryBill91({
    required this.image,
    required this.comName,
    required this.maturityDate,
    required this.yearLow,
    required this.yearHigh,
  });

  List<Object?> get props => [image, comName, yearLow, yearHigh];
  static List<TreasuryBill91> treasuryBill91 = [
    TreasuryBill91(
      image: Image.asset("assets/images/91.jpg"),
      comName: "91-DAY BILL",
      maturityDate: "12/12/22",
      yearHigh: 492.8270,
      yearLow: 21.1273,
    ),
    TreasuryBill91(
      image: Image.asset("assets/images/91.jpg"),
      comName: "91-DAY BILL",
      maturityDate: "19/12/22",
      yearHigh: 98.2905,
      yearLow: 93.0250,
    ),
    TreasuryBill91(
      image: Image.asset("assets/images/91.jpg"),
      comName: "91-DAY BILL",
      maturityDate: "26/12/22",
      yearHigh: 99.7265,
      yearLow: 87.9941,
    ),
    TreasuryBill91(
      image: Image.asset("assets/images/91.jpg"),
      comName: "91-DAY BILL",
      maturityDate: "09/01/23",
      yearHigh: 98.8865,
      yearLow: 92.1486,
    ),
    TreasuryBill91(
      image: Image.asset("assets/images/91.jpg"),
      comName: "91-DAY BILL",
      maturityDate: "09/01/23",
      yearHigh: 99.7190,
      yearLow: 91.8462,
    ),
  ];
}
