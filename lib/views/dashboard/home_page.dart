import 'package:flutter/material.dart';
import 'package:radi_app/models/shares_card_model.dart';
import 'package:radi_app/utils/colors.dart';
import 'package:radi_app/views/pages/news_page.dart';
import 'package:radi_app/views/screens/bonds.dart';
import 'package:radi_app/views/screens/shares.dart';
import 'package:radi_app/views/screens/shares_card_details.dart';
import 'package:radi_app/views/screens/t_bill.dart';
import 'package:radi_app/widgets/quick_access.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height / 56.26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 16.88,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: AppColors.focusedBorder)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: AppColors.enabledBorederColor,
                                  width: 1.2)),
                          hintText: "search",
                          hintStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height / 52.75),
                          prefixIcon: const Icon(Icons.search)),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                    height: MediaQuery.of(context).size.height / 4.96,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xFFe8e8e8),
                              blurRadius: 5.0,
                              offset: Offset(0, 5)),
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 13, 2, 33)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "CASH BALANCE",
                          style: TextStyle(
                              color: AppColors.textColor3,
                              fontSize:
                                  MediaQuery.of(context).size.height / 33.76),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height / 120.57),
                          child: Text(
                            "GHS 0.00",
                            style: TextStyle(
                                color: AppColors.textColor3,
                                fontSize:
                                    MediaQuery.of(context).size.height / 38.36),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height / 18.75,
                              width: MediaQuery.of(context).size.height / 6.02,
                              decoration: BoxDecoration(
                                  color: AppColors.containerColor,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8))),
                              child: Center(
                                  child: Text(
                                "Deposit",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            46.88),
                              )),
                            ),
                            Container(
                              height:
                                  MediaQuery.of(context).size.height / 18.75,
                              width: MediaQuery.of(context).size.height / 6.02,
                              decoration: BoxDecoration(
                                  color: AppColors.containerColor2,
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8))),
                              child: Center(
                                  child: Text(
                                "Withdraw",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            46.88),
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    "Hot Shares",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.height / 46.88),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4.96,
              child: ListView.builder(
                // padding: EdgeInsets.symmetric(horizontal: 3),
                scrollDirection: Axis.horizontal,
                itemCount: CardShares.cardShares.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.008),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 28,
                            vertical:
                                MediaQuery.of(context).size.height / 281.33),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return CardDetails(
                                    cardShares: CardShares.cardShares[index]);
                              },
                            ));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5.62,
                            width: MediaQuery.of(context).size.height / 7.03,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
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
                            child: Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.height / 84.4),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  (Container(
                                    height: MediaQuery.of(context).size.height /
                                        16.88,
                                    width: MediaQuery.of(context).size.height /
                                        16.88,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: CardShares
                                          .cardShares[index].image.image,
                                    )),
                                  )),
                                  Text(
                                    CardShares.cardShares[index].comName,
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                56.26),
                                  ),
                                  Text(
                                    CardShares.cardShares[index].yearLow
                                        .toString(),
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                56.26),
                                  ),
                                  Text(
                                    CardShares.cardShares[index].yearHigh
                                        .toString(),
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                56.26),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height / 56.26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Quick Access",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.height / 46.88),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      quickAccess(
                          contHeight:
                              MediaQuery.of(context).size.height / 12.05,
                          contWidth: MediaQuery.of(context).size.height / 12.05,
                          fontsize: MediaQuery.of(context).size.height / 49.64,
                          sizeHeight:
                              MediaQuery.of(context).size.height / 105.5,
                          iconsSize: MediaQuery.of(context).size.height / 28.13,
                          accessName: "   Buy\nShares",
                          accessIcon: const Icon(
                            Icons.shopping_bag,
                          ),
                          accessFunc: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const SharesView();
                              },
                            ));
                          }),
                      quickAccess(
                          contHeight:
                              MediaQuery.of(context).size.height / 12.05,
                          contWidth: MediaQuery.of(context).size.height / 12.05,
                          fontsize: MediaQuery.of(context).size.height / 49.64,
                          sizeHeight:
                              MediaQuery.of(context).size.height / 105.5,
                          iconsSize: MediaQuery.of(context).size.height / 28.13,
                          accessName: "   Sell\nShares",
                          accessIcon: const Icon(Icons.sell),
                          accessFunc: () {}),
                      quickAccess(
                          contHeight:
                              MediaQuery.of(context).size.height / 12.05,
                          contWidth: MediaQuery.of(context).size.height / 12.05,
                          fontsize: MediaQuery.of(context).size.height / 49.64,
                          sizeHeight:
                              MediaQuery.of(context).size.height / 105.5,
                          iconsSize: MediaQuery.of(context).size.height / 28.13,
                          accessName: "Treasury\n     Bill",
                          accessIcon: const Icon(Icons.monetization_on),
                          accessFunc: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const TBillPage();
                              },
                            ));
                          }),
                      quickAccess(
                          contHeight:
                              MediaQuery.of(context).size.height / 12.05,
                          contWidth: MediaQuery.of(context).size.height / 12.05,
                          fontsize: MediaQuery.of(context).size.height / 49.64,
                          sizeHeight:
                              MediaQuery.of(context).size.height / 105.5,
                          iconsSize: MediaQuery.of(context).size.height / 28.13,
                          accessName: "Bonds",
                          accessIcon: const Icon(
                            Icons.format_bold_rounded,
                          ),
                          accessFunc: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const BondsPage();
                              },
                            ));
                          })
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text("Latest News",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.height / 46.88))
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const NewsPageBody(),
          ],
        ),
      ),
    );
  }
}
