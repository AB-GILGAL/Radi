import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:radi_app/widgets/signup/iddropdown.dart';
import '../../../widgets/signup/field_text.dart';
import '../../../widgets/signup/intrust.dart';
import '../../../widgets/signup/titledropdown.dart';

class Beneficiary extends StatefulWidget {
  const Beneficiary({super.key});

  @override
  State<Beneficiary> createState() => _BeneficiaryState();
}

class _BeneficiaryState extends State<Beneficiary> {
  String? selected;
  String? selectedTitle;
  String? cardTypeSelected;
  bool isVisible = false;

  final TextEditingController beneficiaryFullNameController =
      TextEditingController();
  final TextEditingController beneficiaryIdNumController =
      TextEditingController();
  final TextEditingController beneficiaryCIdNumController =
      TextEditingController();
  static final RegExp nameRegExp = RegExp('[a-zA-Z]');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 84.4,
          bottom: MediaQuery.of(context).size.height / 84.4),
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height / 168.8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 84.4),
                child: Text(
                  "Beneficiary:  ",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 46.88),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3.8,
                child: trustYesorNo(
                    dropTextSize: MediaQuery.of(context).size.height / 46.88,
                    widthSize: MediaQuery.of(context).size.height / 562.66,
                    paddingSize: MediaQuery.of(context).size.height / 52.75,
                    trustYesOrNoText: "Select",
                    textSize: MediaQuery.of(context).size.height / 46.88,
                    onChanged: (value) {
                      setState(() {
                        selected = value;
                      });
                      if (selected == "Yes" && isVisible == false) {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      } else if (selected == "No" && isVisible == true) {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      }
                    }),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Visibility(
              visible: isVisible,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 84.4),
                        child: Text(
                          "Title:  ",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height / 46.88),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: dropDownTitle(onChanged: (value) {
                          setState(() {
                            selectedTitle = value;
                          });
                        }),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10.55,
                    width: double.infinity,
                    child: FieldText(
                        nameText: "Full Name",
                        textEditingController: beneficiaryFullNameController,
                        formFieldValidator: (value) => value!.isEmpty
                            ? 'Enter your Full Name'
                            : (nameRegExp.hasMatch(value)
                                ? null
                                : 'Enter a Valid Full Name'),
                        keyboardT: TextInputType.name),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Row(
                    children: [
                      Text(
                        "Country:",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height / 42.2),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width / 20),
                      Container(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.height / 120.57),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                        ),
                        child: CountryListPick(
                          appBar: AppBar(
                            backgroundColor: Colors.grey[50],
                            foregroundColor: Colors.black,
                          ),
                          theme: CountryTheme(
                              isShowFlag: true,
                              isShowCode: true,
                              isShowTitle: true,
                              isDownIcon: true),
                          initialSelection: "+233",
                          onChanged: (code) {
                            code!.name;
                            code.code;
                            code.dialCode;
                            code.flagUri;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
                                cardTypeSelected = value;
                              });
                            }),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10.55,
                    width: double.infinity,
                    child: FieldText(
                        nameText: "ID Number",
                        textEditingController: beneficiaryIdNumController,
                        formFieldValidator: (value) {},
                        keyboardT: TextInputType.name),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10.55,
                    width: double.infinity,
                    child: FieldText(
                        nameText: "CID Number",
                        textEditingController: beneficiaryCIdNumController,
                        formFieldValidator: (value) {},
                        keyboardT: TextInputType.name),
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
