// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:radi_app/models/shares_card_model.dart';
import 'package:radi_app/widgets/custom_appbar.dart';

class BuyView extends StatefulWidget {
  BuyView({Key? key, this.cardShares}) : super(key: key);

  CardShares? cardShares;
  @override
  State<BuyView> createState() => _BuyViewState();
}

class _BuyViewState extends State<BuyView> {
  CardShares? buyShares;
  final TextEditingController buySharesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Buy"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: widget.cardShares!.image.image,
                            fit: BoxFit.cover)),
                  ),
                  title: Text(
                    widget.cardShares!.comName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(widget.cardShares!.shareCode),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Opening Price(GH₵)",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          widget.cardShares!.openingPrice.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "Closing Price(GH₵)",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          widget.cardShares!.closingPrice.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                SizedBox(
                  height: 80,
                  child: TextField(
                    controller: buySharesController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 50, horizontal: 20),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.red, width: 1.5),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.red, width: 1.5),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.5),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 30, 0, 82),
                              width: 1.2),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 30, 0, 82),
                          )),
                      onPressed: () {},
                      child: const Text("Continue",
                          style: TextStyle(fontSize: 18))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
