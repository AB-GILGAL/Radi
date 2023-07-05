import 'package:flutter/material.dart';
import 'package:radi_app/widgets/signup/intrust.dart';
import 'package:radi_app/widgets/signup/titledropdown.dart';
import '../../../widgets/signup/field_text.dart';

class IntrustView extends StatefulWidget {
  const IntrustView({super.key});

  @override
  State<IntrustView> createState() => _IntrustViewState();
}

class _IntrustViewState extends State<IntrustView> {
  String? selectedTrust;
  String? selectedTitle;
  bool isVisible = false;

  final TextEditingController trustFullNameController = TextEditingController();
  static final RegExp nameRegExp = RegExp('[a-zA-Z]');
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 84.4),
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
                "In Trust:  ",
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
                  textSize: MediaQuery.of(context).size.height / 46.88,
                  trustYesOrNoText: "Select",
                  onChanged: (value) {
                    setState(() {
                      selectedTrust = value;
                    });
                    if (selectedTrust == "Yes" && isVisible == false) {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    } else if (selectedTrust == "No" && isVisible == true) {
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
                      width: MediaQuery.of(context).size.width / 4,
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
                      textEditingController: trustFullNameController,
                      formFieldValidator: (value) => value!.isEmpty
                          ? 'Enter your Full Name'
                          : (nameRegExp.hasMatch(value)
                              ? null
                              : 'Enter a Valid Full Name'),
                      keyboardT: TextInputType.name),
                ),
              ],
            ))
      ]),
    );
  }
}
