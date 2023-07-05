import 'package:flutter/material.dart';

class FinancialStatementPage extends StatefulWidget {
  const FinancialStatementPage({super.key});

  @override
  State<FinancialStatementPage> createState() => _FinancialStatementPageState();
}

class _FinancialStatementPageState extends State<FinancialStatementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("FS"),
      ),
    );
  }
}
