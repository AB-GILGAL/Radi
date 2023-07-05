import 'package:flutter/material.dart';
import 'package:radi_app/models/ninety_one.dart';
import 'package:radi_app/models/three_hundred.dart';
import 'package:radi_app/widgets/custom_appbar.dart';

class ThreeHundredSixtyFour extends StatefulWidget {
  const ThreeHundredSixtyFour({super.key});

  @override
  State<ThreeHundredSixtyFour> createState() => _ThreeHundredSixtyFourState();
}

class _ThreeHundredSixtyFourState extends State<ThreeHundredSixtyFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "91-DAY BILL"),
      body: GridView.builder(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.height / 56.26,
            right: MediaQuery.of(context).size.height / 56.26,
            top: MediaQuery.of(context).size.height / 56.26,
            bottom: 0),
        itemCount: TreasuryBill91.treasuryBill91.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: MediaQuery.of(context).size.height / 105.5,
            mainAxisSpacing: MediaQuery.of(context).size.height / 105.5),
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.of(context).size.height / 6.02,
            width: MediaQuery.of(context).size.height / 8.44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 2)),
                  BoxShadow(color: Colors.white, offset: Offset(-1, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(1, 0))
                ]),
            child: Padding(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height / 84.4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 16.88,
                    width: MediaQuery.of(context).size.height / 16.88,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 2)),
                          BoxShadow(color: Colors.white, offset: Offset(-1, 0)),
                          BoxShadow(color: Colors.white, offset: Offset(1, 0))
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: TreasuryBill364
                              .treasuryBill364[index].image.image,
                        )),
                  ),
                  Text(
                    TreasuryBill364.treasuryBill364[index].comName,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 56.26),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        TreasuryBill364.treasuryBill364[index].yearHigh
                            .toStringAsFixed(4),
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height / 56.26),
                      ),
                      Text(
                        "Year High",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height / 70.33),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        TreasuryBill364.treasuryBill364[index].yearLow
                            .toStringAsFixed(4),
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height / 56.26),
                      ),
                      Text(
                        "Year Low",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height / 70.33),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        TreasuryBill364.treasuryBill364[index].maturityDate,
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height / 56.26),
                      ),
                      Text(
                        "Maturity Date",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height / 70.33),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
