import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            elevation: 3,
            child: ListTile(
              leading: Container(
                  height: MediaQuery.of(context).size.height / 24.11,
                  width: MediaQuery.of(context).size.height / 24.11,
                  color: Colors.black,
                  child: const Icon(
                    Icons.equalizer,
                    color: Colors.white,
                  )),
              title: const Text("Equities"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          Card(
            elevation: 3,
            child: ListTile(
              leading: Container(
                  height: MediaQuery.of(context).size.height / 24.11,
                  width: MediaQuery.of(context).size.height / 24.11,
                  color: Colors.black,
                  child: const Icon(
                    Icons.show_chart_rounded,
                    color: Colors.white,
                  )),
              title: const Text("Depository Share"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          Card(
            elevation: 3,
            child: ListTile(
              leading: Container(
                  height: MediaQuery.of(context).size.height / 24.11,
                  width: MediaQuery.of(context).size.height / 24.11,
                  color: Colors.black,
                  child: const Icon(
                    Icons.room_preferences,
                    color: Colors.white,
                  )),
              title: const Text("Preference Shares"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          Card(
            elevation: 3,
            child: ListTile(
              leading: Container(
                  height: MediaQuery.of(context).size.height / 24.11,
                  width: MediaQuery.of(context).size.height / 24.11,
                  color: Colors.black,
                  child: const Icon(
                    Icons.explicit_sharp,
                    color: Colors.white,
                  )),
              title: const Text("Exchange Tradeable Funds(EFTs)"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          Card(
            elevation: 3,
            child: ListTile(
              leading: Container(
                  height: MediaQuery.of(context).size.height / 24.11,
                  width: MediaQuery.of(context).size.height / 24.11,
                  color: Colors.black,
                  child: const Icon(
                    Icons.fort_rounded,
                    color: Colors.white,
                  )),
              title: const Text("Ghana Alternative Market"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
