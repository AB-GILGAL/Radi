import 'package:flutter/material.dart';
import 'package:radi_app/views/pages/treasury_bill_182.dart';
import 'package:radi_app/views/pages/treasury_bill_364.dart';
import 'package:radi_app/views/pages/treasury_bill_91.dart';
import 'package:radi_app/widgets/custom_appbar.dart';

class TBillPage extends StatefulWidget {
  const TBillPage({super.key});

  @override
  State<TBillPage> createState() => _TBillPageState();
}

class _TBillPageState extends State<TBillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Treasury Bill"),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const NinetyOneDayBill();
                },
              ));
            },
            child: ListTile(
              leading: Text("91-DAY BILL",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 46.88)),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: MediaQuery.of(context).size.height / 33.76,
              ),
            ),
          ),
          Divider(
            color: Colors.grey[70],
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const HundredEightyTwo();
                },
              ));
            },
            child: ListTile(
              leading: Text("182-DAY BILL",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 46.88)),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: MediaQuery.of(context).size.height / 33.76,
              ),
            ),
          ),
          Divider(
            color: Colors.grey[70],
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ThreeHundredSixtyFour();
                },
              ));
            },
            child: ListTile(
              leading: Text("364-DAY BILL",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 46.88)),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: MediaQuery.of(context).size.height / 33.76,
              ),
            ),
          ),
          Divider(
            color: Colors.grey[70],
          ),
        ],
      ),
    );
  }
}
