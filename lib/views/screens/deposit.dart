import 'package:flutter/material.dart';
import 'package:radi_app/widgets/custom_appbar.dart';

class DepositView extends StatefulWidget {
  const DepositView({super.key});

  @override
  State<DepositView> createState() => _DepositViewState();
}

class _DepositViewState extends State<DepositView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Deposit"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const Text(
              "Mobile Money",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const Divider(
              color: Colors.grey,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const Text(
              "Bank",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
