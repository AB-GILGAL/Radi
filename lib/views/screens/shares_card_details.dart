import 'package:flutter/material.dart';
import 'package:radi_app/models/shares_card_model.dart';
import 'package:radi_app/utils/colors.dart';
import 'package:radi_app/views/screens/buy.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key, this.cardShares}) : super(key: key);

  final CardShares? cardShares;
  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  // CardShares? cardShares;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.41,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFFe8e8e8),
                          blurRadius: 2,
                          offset: Offset(0, 5)),
                    ],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: widget.cardShares!.image.image,
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 18.75,
                left: MediaQuery.of(context).size.height / 42.2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 21.1,
                  width: MediaQuery.of(context).size.height / 21.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.iconBackgroundColor),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: AppColors.iconColor,
                      size: MediaQuery.of(context).size.height / 52.75,
                    ),
                  ),
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: MediaQuery.of(context).size.height / 2.41 - 20,
              child: Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height / 42.2,
                    right: MediaQuery.of(context).size.height / 42.2,
                    top: MediaQuery.of(context).size.height / 42.2),
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            MediaQuery.of(context).size.height / 42.2),
                        topRight: Radius.circular(
                            MediaQuery.of(context).size.height / 42.2))),
                child: Column(
                  children: [
                    Text(
                      widget.cardShares!.comName,
                      style: const TextStyle(fontSize: 26),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 7.03,
                          width: MediaQuery.of(context).size.height / 5.62,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xFFe8e8e8),
                                  blurRadius: 5.0,
                                  offset: Offset(0, 5)),
                              BoxShadow(
                                  color: Colors.white, offset: Offset(-5, 0)),
                              BoxShadow(
                                  color: Colors.white, offset: Offset(5, 0))
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.cardShares!.openingPrice.toString(),
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            49.88),
                              ),
                              Text(
                                "Opening Price",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            49.64),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 7.03,
                          width: MediaQuery.of(context).size.height / 5.62,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xFFe8e8e8),
                                  blurRadius: 5.0,
                                  offset: Offset(0, 5)),
                              BoxShadow(
                                  color: Colors.white, offset: Offset(-5, 0)),
                              BoxShadow(
                                  color: Colors.white, offset: Offset(5, 0))
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.cardShares!.closingPrice.toString(),
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            49.88),
                              ),
                              Text(
                                "Closing Price\n       VWAP",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            49.64),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.019),
                    Text(
                      "Details",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 49.64),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Share Code",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height /
                                      46.88),
                            ),
                            Text(widget.cardShares!.shareCode,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            46.88))
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Year High(GH₵)",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height /
                                      46.88),
                            ),
                            Text(widget.cardShares!.yearHigh.toString(),
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            46.88))
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Year low(GH₵)",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height /
                                      46.88),
                            ),
                            Text(widget.cardShares!.yearLow.toString(),
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            46.88))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.height / 42.2,
              right: MediaQuery.of(context).size.height / 42.2,
              bottom: MediaQuery.of(context).size.height / 42.2),
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 16.88,
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.buttonColor,
                    )),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return BuyView(
                        cardShares: widget.cardShares,
                      );
                    },
                  ));
                },
                child: Text("Buy",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 46.88))),
          ),
        ));
  }
}
