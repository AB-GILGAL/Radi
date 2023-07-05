import 'package:flutter/material.dart';
import 'package:radi_app/widgets/custom_appbar.dart';

class BondsPage extends StatefulWidget {
  const BondsPage({super.key});

  @override
  State<BondsPage> createState() => _BondsPageState();
}

class _BondsPageState extends State<BondsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Bonds"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Text("2-YEAR NOTE",
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
              onTap: () {},
              child: ListTile(
                leading: Text("3-YEAR BOND",
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
              onTap: () {},
              child: ListTile(
                leading: Text("4-YEAR BOND",
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
              onTap: () {},
              child: ListTile(
                leading: Text("5-YEAR BOND",
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
              onTap: () {},
              child: ListTile(
                leading: Text("6-YEAR BOND",
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
              onTap: () {},
              child: ListTile(
                leading: Text("7-YEAR BOND",
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
              onTap: () {},
              child: ListTile(
                leading: Text("10-YEAR BOND",
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
              onTap: () {},
              child: ListTile(
                leading: Text("13-YEAR BOND",
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
              onTap: () {},
              child: ListTile(
                leading: Text("20-YEAR BOND",
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
      ),
    );
  }
}
