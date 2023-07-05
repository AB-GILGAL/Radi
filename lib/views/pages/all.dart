import 'package:flutter/material.dart';
import 'package:radi_app/models/shares_card_model.dart';
import 'package:radi_app/views/screens/shares_card_details.dart';

class AllPage extends StatefulWidget {
  const AllPage({super.key});

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CardShares.cardShares.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 10.55,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 3,
            child: Center(
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CardDetails(
                          cardShares: CardShares.cardShares[index]);
                    },
                  ));
                },
                leading: Container(
                  height: MediaQuery.of(context).size.height / 24.11,
                  width: MediaQuery.of(context).size.height / 24.11,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: CardShares.cardShares[index].image.image,
                          fit: BoxFit.cover)),
                ),
                title: Text(CardShares.cardShares[index].comName),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          ),
        );
      },
    );
  }
}
