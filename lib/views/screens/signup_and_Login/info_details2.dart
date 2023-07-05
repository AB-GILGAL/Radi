import 'package:flutter/material.dart';
import 'package:radi_app/views/screens/signup_and_Login/info_details3.dart';
import 'package:radi_app/widgets/signup/salary_income.dart';
import 'package:radi_app/widgets/signup/source_of_funds.dart';
import 'package:radi_app/widgets/signup/iddropdown.dart';
import 'package:radi_app/widgets/signup/field_text.dart';

import '../../../utils/colors.dart';

class InfoDetails2 extends StatefulWidget {
  const InfoDetails2({super.key});

  @override
  State<InfoDetails2> createState() => _InfoDetails2State();
}

class _InfoDetails2State extends State<InfoDetails2> {
  String? fundSource;
  String? monthlyIncome;
  String? selectedId;
  String cardTypeSelected = "";
  String source = "";
  String income = "";
  final TextEditingController idNumController = TextEditingController();
  final TextEditingController empController = TextEditingController();

  final formInfoKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Details"),
          foregroundColor: AppColors.appBarForegroundColor,
          backgroundColor: AppColors.appBarBackgroundColor),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height / 56.2),
        child: ListView(
          children: [
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: formInfoKey,
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 84.4),
                        child: Text(
                          "ID Type:  ",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height / 46.88),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10.55,
                        width: MediaQuery.of(context).size.width / 1.95,
                        child: dropDownId(
                            trustYesOrNoText: "Select Id",
                            dropTextSize:
                                MediaQuery.of(context).size.height / 46.88,
                            widthSize:
                                MediaQuery.of(context).size.height / 562.66,
                            paddingSize:
                                MediaQuery.of(context).size.height / 52.75,
                            textSize:
                                MediaQuery.of(context).size.height / 46.88,
                            onChanged: (value) {
                              setState(() {
                                selectedId = value;
                              });
                            }),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10.55,
                    width: double.infinity,
                    child: FieldText(
                        nameText: "ID Number",
                        textEditingController: idNumController,
                        formFieldValidator: (value) {},
                        keyboardT: TextInputType.phone),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10.55,
                    width: double.infinity,
                    child: FieldText(
                        nameText: "Employer/Business/School",
                        textEditingController: empController,
                        formFieldValidator: (value) {},
                        keyboardT: TextInputType.name),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 105.5,
                        ),
                        child: Text(
                          "Source of\n Funds:        ",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height / 46.88),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10.55,
                        width: MediaQuery.of(context).size.width / 1.95,
                        child: sourceOfFunds(onChanged: (value) {
                          setState(() {
                            fundSource = value;
                          });
                        }),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 105.5),
                        child: Text(
                          "Total Monthly\nIncome:               ",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height / 46.88),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10.55,
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: salaryIncome(onChanged: (value) {
                          setState(() {
                            fundSource = value;
                          });
                        }),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height / 42.2),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 16.88,
                      width: double.infinity,
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
                            if (formInfoKey.currentState!.validate()) {
                              setState(() {});
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const InfoDetails3();
                                },
                              ));
                            }
                          },
                          child: const Text("Continue")),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
